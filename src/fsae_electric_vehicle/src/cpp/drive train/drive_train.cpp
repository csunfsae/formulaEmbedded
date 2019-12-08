#include "ros/ros.h"
#include <fsae_electric_vehicle/drivetrain.h>

int main(int argc, char **argv) {
  //std::cout << "Starting drivetrain" << std::endl;

  ros::init(argc, argv, "drivetrain");
  //std::cout << "initialized drivetrain node" << std::endl;
  
  ros::NodeHandle n;
  //std::cout << "After node handle calling ros::start()" << std::endl;

  ros::Publisher drivetrain_msg = n.advertise<fsae_electric_vehicle::drivetrain_voltage>("drivetrain_voltage", 1000);
  //std::cout << "After publisher" << std::endl;
  
  fsae_electric_vehicle::drivetrain drivetrain; //constructor

  ros::Rate loop_rate(100);
  //std::cout << "listening" << std::endl;

  float x = 0;

  while (ros::ok()) {
    drivetrain.voltage = x;
    x+=static_cast <float> (rand()) / static_cast <float> (RAND_MAX); //simulation
    drivetrain_msg.publish(drivetrain);
    ros::spinOnce();
    loop_rate.sleep();
  }
}