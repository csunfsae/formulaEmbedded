#include "ros/ros.h"
// #include "fsae_electric_vehicle/gps.h"
// #include "fsae_electric_vehicle/serial.h"
// #include "fsae_electric_vehicle/speedometer.h"
// #include "fsae_electric_vehicle/brake_pressure.h"
// #include "fsae_electric_vehicle/coolant.h"
// #include "fsae_electric_vehicle/drive_train.h"
#include "fsae_electric_vehicle/data_struct.h"
#include "std_msgs/String.h"
#include <mutex>
#include <ros/callback_queue.h>

#ifdef _WIN32
 #include <WinSock2.h>
 #include <Ws2tcpip.h>
 #pragma comment(lib, "Ws2_32.lib")
#else
 #include <sys/types.h>
 #include <sys/socket.h>
 #include <arpa/inet.h>
 #include <netdb.h>
 #include <unistd.h>
#endif

#ifdef _WIN32
  SOCKET sd;
#else
  int sd;
#endif

std::mutex dataMutex;
char dataStore[96];
// std::array<float, 6> data;

// void gpsCallback(const fsae_electric_vehicle::gps::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&data[0], &msg->latitude, 4);
//   std::memcpy(&data[1], &msg->longitude, 4);
// }

// void brakeCallback(const fsae_electric_vehicle::brake_pressure::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&data[5], &msg->pressure, 4);
// }

// void coolantCallback(const fsae_electric_vehicle::coolant::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&data[4], &msg->temperature, 4);
// }

// void batteryCallback(const fsae_electric_vehicle::drive_train::ConstPtr& msg) {
//   std::lock_guard<std::mutex> lock{dataMutex};
//   std::memcpy(&data[3], &msg->voltage, 4);
// }

// void speedCallback(const fsae_electric_vehicle::speedometer::ConstPtr& msg) {
//      std::lock_guard<std::mutex> lock{dataMutex};
//      std::memcpy(&data[2], &msg->speed, 4);

void dataCallback(const fsae_electric_vehicle::data_struct::ConstPtr& msg) {
  std::memcpy(&dataStore[0], &msg->data, 96);
}


    // struct sockaddr_in addr;
    // std::memset(&addr, 0, sizeof(addr));
    // addr.sin_family = AF_INET;
    // inet_pton(AF_INET, "127.0.0.1", &(addr.sin_addr)); //changed to ANSI version for compatibility
    // addr.sin_port = htons(1234);
    //  sendto(sd, buf, 4, 0, reinterpret_cast<sockaddr*>(&addr), sizeof(addr));
    // }

int main(int argc, char **argv) {
  ros::init(argc, argv, "SocketSender");

  sd = socket(AF_INET, SOCK_DGRAM, 0);

  struct sockaddr_in addr;
  std::memset(&addr, 0, sizeof(addr));
  addr.sin_family = AF_INET;
  addr.sin_addr.s_addr = INADDR_ANY;
  addr.sin_port = htons(8080);

      int optval = 1;

  #ifdef _WIN32
    setsockopt(sd, SOL_SOCKET, SO_EXCLUSIVEADDRUSE,
               reinterpret_cast<char*>(&optval), sizeof optval);
  #else
    setsockopt(sd, SOL_SOCKET, SO_REUSEADDR,
               reinterpret_cast<char*>(&optval), sizeof optval);
  #endif

  bind(sd, reinterpret_cast<sockaddr*>(&addr), sizeof(addr));


  ros::NodeHandle n;

  ros::CallbackQueue my_queue;

  n.setCallbackQueue(&my_queue);

  ros::AsyncSpinner spinner(0, &my_queue);
  spinner.start();

  // ros::Subscriber speed = n.subscribe<fsae_electric_vehicle::speedometer>("speedometer", 1000, speedCallback);
  // ros::Subscriber gps = n.subscribe<fsae_electric_vehicle::gps>("GPS", 1000, gpsCallback);
  // ros::Subscriber bat = n.subscribe<fsae_electric_vehicle::drive_train>("drivetrain_voltage", 1000, batteryCallback);
  // ros::Subscriber cool = n.subscribe<fsae_electric_vehicle::coolant>("coolant_temperature", 1000, coolantCallback);
  // ros::Subscriber brake = n.subscribe<fsae_electric_vehicle::brake_pressure>("brake_pressure", 1000, brakeCallback);

  ros::Subscriber dataStruct = n.subscribe<fsae_electric_vehicle::data_struct>("DataStruct", 1000, dataCallback);


  std::cout << "Created Subscriber" << std::endl;

  ros::Rate loop_rate{10};

  while (ros::ok()) {
    // char dataStore[96];
    // {
    //   std::lock_guard<std::mutex> lock{dataMutex};
    //   std::memcpy(dataStore, &dataStruct.msg[0], 96);
    // }

    struct sockaddr_in addr;
    std::memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    inet_pton(AF_INET, "64.227.48.74", &(addr.sin_addr)); //changed to ANSI version for compatibility
    addr.sin_port = htons(8080);
    sendto(sd, dataStore, 96, 0, reinterpret_cast<sockaddr*>(&addr), sizeof(addr));

    ros::spinOnce();
    loop_rate.sleep();
  }

  ros::spin();

  #ifdef _WIN32
    shutdown(sd, SD_BOTH);
    closesocket(sd);
  #else
    shutdown(sd, SHUT_RDWR);
    close(sd);
  #endif
}
