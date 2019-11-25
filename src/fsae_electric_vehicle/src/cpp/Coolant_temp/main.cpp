#include "ros/ros.h"
#include <fsae_electric_vehicle/coolant.h>

int main(int argc, char **argv) {
  std::cout << "Starting Coolant" << std::endl;
After init
  ros::init(argc, argv, "Coolant");
  std::cout << "initialized coolant node" << std::endl;
  
  ros::NodeHandle n;
  std::cout << "After node handle calling ros::start()" << std::endl;

  ros::Publisher coolant_msg = n.advertise<fsae_electric_vehicle::temperature>("temperature", 1000);

  std::cout << "After publisher" << std::endl;
  
  fsae_electric_vehicle::temperature temperature;

  ros::Rate loop_rate(5);
  std::cout << "listening" << std::endl;
`
  float x = 0;

  while (ros::ok()) {
    coolant.temp = x;
    x+=static_cast <float> (rand()) / static_cast <float> (RAND_MAX); //simulation
    coolant_msg.publish(temperature);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
