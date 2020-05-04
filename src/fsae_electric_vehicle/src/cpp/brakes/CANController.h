#pragma once

#include <thread>
#include <atomic>
#include <optional>
#include <mutex>
#include <vector>
#include <string>

struct CANData {
  uint64_t timestamp;
  int32_t id;
  bool valid;
  uint8_t length;
  uint8_t data[8];

};

class CANController {
public:
  int start(std::string_view port);
  void stop();
  std::optional<CANData> getData(uint32_t idFilter, uint32_t idMask);
  void putData(const CANData& data);

  int getUtilPercent() { return m_utilPercent;}
private:
  //void writeThreadMain();
  void readThreadMain();
  void utilThreadMain();


  std::atomic_bool m_running;
  //wpi::ConcurrentQueue<CANData> m_outgoing;
  std::thread m_incomingThread;
  //std::thread m_outgoingThread;
  std::thread m_utilThread;
  int m_socket {-1};

  std::atomic_int m_utilPercent {0};

  std::atomic_int m_totalBits {0};

  std::mutex m_dataMutex;
  std::vector<CANData> m_dataMap;

};
