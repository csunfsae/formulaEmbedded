#include "ros/ros.h"
#include "fsae_electric_vehicle/gps.h"
#include "fsae_electric_vehicle/serial.h"
#include "fsae_electric_vehicle/speedometer.h"
#include "std_msgs/String.h"

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

void speedCallback(const fsae_electric_vehicle::speedometer::ConstPtr& msg) {
     ROS_INFO("I heard: [%f]", msg->speed);
     char buf[4];
     std::memcpy(buf, &msg->speed, 4);

    struct sockaddr_in addr;
    std::memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    inet_pton(AF_INET, "127.0.0.1", &(addr.sin_addr)); //changed to ANSI version for compatibility
    addr.sin_port = htons(1234);
     sendto(sd, buf, 4, 0, reinterpret_cast<sockaddr*>(&addr), sizeof(addr));
   }

int main(int argc, char **argv) {
  ros::init(argc, argv, "SocketSender");

  sd = socket(AF_INET, SOCK_DGRAM, 0);

  struct sockaddr_in addr;
  std::memset(&addr, 0, sizeof(addr));
  addr.sin_family = AF_INET;
  addr.sin_addr.s_addr = INADDR_ANY;
  addr.sin_port = htons(1232);

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

  ros::Subscriber speedSubscript = n.subscribe<fsae_electric_vehicle::speedometer>("speedometer", 1000, speedCallback);

  std::cout << "Created Subscriber" << std::endl;

  ros::spin();

  #ifdef _WIN32
    shutdown(sd, SD_BOTH);
    closesocket(sd);
  #else
    shutdown(sd, SHUT_RDWR);
    close(sd);
  #endif
}
