#include "ros/ros.h"
#include <fsae_electric_vehicle/drive_train.h>
#include "CANController.h"

int main(int argc, char **argv) {
  //std::cout << "Starting drivetrain" << std::endl;

  ros::init(argc, argv, "drivetrain");
  //std::cout << "initialized drivetrain node" << std::endl;

  ros::NodeHandle n;
  //std::cout << "After node handle calling ros::start()" << std::endl;

  ros::Publisher drivetrain_msg = n.advertise<fsae_electric_vehicle::drive_train>("drivetrain_voltage", 1000);
  //std::cout << "After publisher" << std::endl;

  fsae_electric_vehicle::drive_train drivetrain; //constructor

  ros::Rate loop_rate(100);
  //std::cout << "listening" << std::endl;

  CANController can;
  can.start("can0");

  int lastVal = 0;

  while (ros::ok()) {
    auto data = can.getData(0x02051881, 0x1FFFFFFF);
    if (data.has_value()) {
      std::memcpy(&lastVal, data->data, 4);
    }
    drivetrain.voltage = lastVal;
    drivetrain_msg.publish(drivetrain);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
