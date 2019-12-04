#include "ros/ros.h"
#include <fsae_electric_vehicle/brake_pressure.h>

int main(int argc, char **argv) {
  //std::cout << "Starting brake_pressure process" << std::endl;

  ros::init(argc, argv, "brake_pressure");
  //std::cout << "initialized bp node" << std::endl;
  
  ros::NodeHandle n;
  //std::cout << "After node handle calling ros::start()" << std::endl;

  ros::Publisher brake_pressure_msg = n.advertise<fsae_electric_vehicle::suspension_voltage>("brake_pressure", 1000);
  //std::cout << "After bp publisher" << std::endl;
  
  fsae_electric_vehicle::brake_pressure brake_pressure; //constructor

  ros::Rate loop_rate(100);
  //std::cout << "listening bp" << std::endl;

  float x = 0;

  while (ros::ok()) {
    brake_pressure.value = x;
    x+=static_cast <float> (rand()) / static_cast <float> (RAND_MAX); //simulation
    brake_pressure_msg.publish(brake_pressure);
    ros::spinOnce();
    loop_rate.sleep();
  }
}