#include "ros/ros.h"
#include <fsae_electric_vehicle/suspension.h>

int main(int argc, char **argv) {
  std::cout << "Starting Suspension" << std::endl;

  ros::init(argc, argv, "Suspension");
  std::cout << "initialized suspension node" << std::endl;
  
  ros::NodeHandle n;
  std::cout << "After node handle calling ros::start()" << std::endl;

  ros::Publisher suspension_msg = n.advertise<fsae_electric_vehicle::suspension_voltage>("suspension_voltage", 1000);
  std::cout << "After publisher" << std::endl;
  
  fsae_electric_vehicle::suspension suspension; //constructor

  ros::Rate loop_rate(5);
  std::cout << "listening" << std::endl;
`
  float x = 0;

  while (ros::ok()) {
    suspension.voltage = x;
    x+=static_cast <float> (rand()) / static_cast <float> (RAND_MAX); //simulation
    suspension_msg.publish(suspension);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
