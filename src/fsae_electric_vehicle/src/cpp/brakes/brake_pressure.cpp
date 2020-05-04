#include "ros/ros.h"
#include <fsae_electric_vehicle/brake_pressure.h>
#include "CANController.h"

int main(int argc, char **argv) {
  //std::cout << "Starting brake_pressure process" << std::endl;

  ros::init(argc, argv, "brake_pressure");
  //std::cout << "initialized bp node" << std::endl;

  ros::NodeHandle n;
  //std::cout << "After node handle calling ros::start()" << std::endl;

  ros::Publisher brake_pressure_msg = n.advertise<fsae_electric_vehicle::brake_pressure>("brake_pressure", 1000);
  //std::cout << "After bp publisher" << std::endl;

  fsae_electric_vehicle::brake_pressure brake_pressure; //constructor

  ros::Rate loop_rate(50);
  //std::cout << "listening bp" << std::endl;

  CANController can;
  can.start("can0");

  float lastVal = 0;

  while (ros::ok()) {
    auto data = can.getData(0x02051884, 0x1FFFFFFF);
    if (data.has_value()) {
      std::memcpy(&lastVal, data->data, 4);
    }
    brake_pressure.pressure = lastVal;
    brake_pressure_msg.publish(brake_pressure);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
