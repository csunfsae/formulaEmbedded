#include "ros/ros.h"
#include <fsae_electric_vehicle/coolant.h>
#include "CANController.h"

int main(int argc, char **argv) {
  std::cout << "Starting Coolant" << std::endl;

  ros::init(argc, argv, "Coolant");
  std::cout << "initialized coolant node" << std::endl;

  ros::NodeHandle n;
  std::cout << "After node handle calling ros::start()" << std::endl;

  ros::Publisher coolant_msg = n.advertise<fsae_electric_vehicle::coolant>("coolant_temperature", 1000);

  std::cout << "After publisher" << std::endl;

  CANController can;
  can.start("can0");

  fsae_electric_vehicle::coolant temperature;

  ros::Rate loop_rate(5);
  std::cout << "listening" << std::endl;

  float lastVal = 0;

  while (ros::ok()) {
    auto data = can.getData(0x0A080F03, 0x1FFFFFFF);
    if (data.has_value()) {
      std::memcpy(&lastVal, data->data, 4);
    }
    temperature.temperature = lastVal;
    coolant_msg.publish(temperature);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
