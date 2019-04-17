/* A simple SocketCAN example */

#include "ros/ros.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <iostream>
#include <sys/ioctl.h>
#include <net/if.h>
#include <linux/can.h>
#include <linux/can/raw.h>
#include "fsae_electric_vehicle/can_message.h"

int soc;
int read_can_port;

int open_port(const char *port)
{
    struct ifreq ifr;
    struct sockaddr_can addr;

    /* open socket */
    soc = socket(PF_CAN, SOCK_RAW, CAN_RAW);
    if(soc < 0)
    {
        return (-1);
    }

    addr.can_family = AF_CAN;
    strcpy(ifr.ifr_name, port);

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

    return 0;
}

int send_port(struct can_frame *frame)
{
    int retval;
   retval = write(soc, frame, sizeof(struct can_frame));
    if (retval != sizeof(struct can_frame))
    {
        return (-1);
    }
    else
    {
        return (0);
    }
}

/* this is just an example, run in a thread */
fsae_electric_vehicle::can_message read_port(fsae_electric_vehicle::can_message can_message)
{
    struct can_frame frame_rd;
    int recvbytes = 0;
    std::string can_data_string = "";
    read_can_port = 1;
    struct timeval timeout = {1, 0};
    fd_set readSet;
    FD_ZERO(&readSet);
    FD_SET(soc, &readSet);

    if (select((soc + 1), &readSet, NULL, NULL, &timeout) >= 0)
    {
        if (!read_can_port)
        {
          return can_message;
        }
        if (FD_ISSET(soc, &readSet))
        {
            recvbytes = read(soc, &frame_rd, sizeof(struct can_frame));
            if(recvbytes)
            {
              can_message.id = frame_rd.can_id;
              char stuff[8]; 
              for(int x=0;x<8;x++){
                sprintf(stuff, "%x", frame_rd.data[x]);
                can_data_string.append(stuff);
              }
              std::cout << can_data_string << std::endl;
              can_message.data = can_data_string;
            }
        }
    }
    return can_message;
}


int close_port()
{
    close(soc);
    return 0;
}

int main(int argc, char **argv)
{
  fsae_electric_vehicle::can_message can_message;

  ros::init(argc, argv, "CAN_BUS");
  ros::NodeHandle n;
  ros::Publisher CAN_BUS = n.advertise<fsae_electric_vehicle::can_message>("CAN_BUS", 1000);
  open_port("can0");
  while(ros::ok()){
    can_message = read_port(can_message);
    CAN_BUS.publish(can_message);
  }

  return 0;
}
