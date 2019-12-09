#include "CANController.h"
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <net/if.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <unistd.h>
#include <chrono>


enum cfl_mode {
	CFL_NO_BITSTUFFING, /* plain bit calculation without bitstuffing */
	CFL_WORSTCASE, /* worst case estimation - see above */
	CFL_EXACT, /* exact calculation of stuffed bits based on frame
		    * content and CRC */
};

unsigned can_frame_length(struct canfd_frame *frame, enum cfl_mode mode, int mtu)
{
	int eff = (frame->can_id & CAN_EFF_FLAG);

	if (mtu != CAN_MTU)
		return 0;	/* CANFD is not supported yet */

	switch (mode) {
	case CFL_NO_BITSTUFFING:
		return (eff ? 67 : 47) + frame->len * 8;
	case CFL_WORSTCASE:
		return (eff ? 80 : 55) + frame->len * 10;
	case CFL_EXACT:
		return 0;
	}
	return 0; /* Unknown mode */
}


int CANController::start(std::string_view port) {
  if (m_socket != -1) return 0;


  struct ifreq ifr;
  struct sockaddr_can addr;

  int soc = 0;

  /* open socket */
  soc = socket(PF_CAN, SOCK_RAW, CAN_RAW);
  if(soc < 0)
  {
      return (-1);
  }

  addr.can_family = AF_CAN;
  strcpy(ifr.ifr_name, port.data());

  if (ioctl(soc, SIOCGIFINDEX, &ifr) < 0)
  {

      return (-1);
  }

  addr.can_ifindex = ifr.ifr_ifindex;

  fcntl(soc, F_SETFL, O_NONBLOCK);

  if (bind(soc, (struct sockaddr *)&addr, sizeof(addr)) < 0)
  {

      return (-1);
  }

  m_socket = soc;

  m_running = true;

  m_incomingThread = std::thread(&CANController::readThreadMain, this);

  m_utilThread = std::thread(&CANController::utilThreadMain, this);

  return 0;
}

void CANController::stop() {
  m_running = false;

  if (m_incomingThread.joinable()) m_incomingThread.join();
  if (m_utilThread.joinable()) m_utilThread.join();
}

std::optional<CANData> CANController::getData(uint32_t idFilter, uint32_t idMask) {
  std::lock_guard lock(m_dataMutex);
  for (auto& message : m_dataMap)  {
    if (message.valid && (message.id & idMask) == idFilter) {
      auto copy = message;
      message.valid = false;
      return copy;
    }
  }
  return {};
}

void CANController::putData(const CANData& data) {
  can_frame frame;
    for (int i = 0; i < 8; i++) {
      frame.data[i] = data.data[i];
    }
    frame.can_id = data.id;
    frame.can_id |= CAN_EFF_FLAG;
    frame.can_dlc = data.length;

    write(m_socket, &frame, sizeof(struct can_frame));

    m_totalBits += can_frame_length((struct canfd_frame*)&frame,
                      CFL_WORSTCASE, sizeof(frame));
}

void CANController::readThreadMain() {
  struct can_frame frame_rd;
  int recvbytes = 0;

  int soc = m_socket;

  while(m_running)
  {
      struct timeval timeout = {1, 0};
      fd_set readSet;
      FD_ZERO(&readSet);
      FD_SET(soc, &readSet);

      if (select((soc + 1), &readSet, NULL, NULL, &timeout) >= 0)
      {
          if (!m_running)
          {
              break;
          }
          if (FD_ISSET(soc, &readSet))
          {
              recvbytes = read(soc, &frame_rd, sizeof(struct can_frame));
              if(recvbytes)
              {

                  CANData newData;
                  newData.id = frame_rd.can_id & 0x1FFFFFFF;
                  int i = 0;
                  for (; i < frame_rd.can_dlc; i++) {
                      newData.data[i] = frame_rd.data[i];
                  }

                  for (; i < 8; i++) {
                      newData.data[i] = 0;
                  }

                  newData.length = frame_rd.can_dlc;

                  newData.timestamp = 0;

                  newData.valid = true;

                  {
                    std::lock_guard lock(m_dataMutex);
                    bool placed = false;
                    for (auto& message : m_dataMap) {
                      if (message.id == newData.id) {
                        message = newData;
                        placed = true;
                        break;
                      }
                    }
                    if (!placed) {
                      m_dataMap.emplace_back(newData);
                    }
                  }



                  m_totalBits += can_frame_length((struct canfd_frame*)&frame_rd,
                      CFL_WORSTCASE, sizeof(frame_rd));
              }
          }
      }

  }
}

void CANController::utilThreadMain() {
  while (m_running) {
    int percent;

    percent = (m_totalBits * 100) / 1000000;

    m_utilPercent = percent;

    m_totalBits = 0;
    std::this_thread::sleep_for(std::chrono::seconds(1));
  }
}
