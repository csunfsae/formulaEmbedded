#include "ros/ros.h"
#include "fsae_electric_vehicle/gps.h"

int main(int argc, char **argv) {
  std::cout << "WHAT!?" << std::endl;
  ros::init(argc, argv, "GPS");
  std::cout << "After init" << std::endl;
  ros::NodeHandle n;
  std::cout << "After node handle" << std::endl;

  ros::Publisher gps_topic = n.advertise<fsae_electric_vehicle::gps>("gps", 1000);

  std::cout << "After publisher" << std::endl;

  fsae_electric_vehicle::gps gps;

  ros::Rate loop_rate{5};
  std::cout << "Init!" << std::endl;

  int x = 0;

  while (ros::ok()) {
    gps.latitude = x;
    x++;
    gps_topic.publish(gps);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
