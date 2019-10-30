#include "ros/ros.h"
#include "fsae_electric_vehicle/speedometer.h"

int main(int argc, char **argv) {
  ros::init(argc, argv, "SPEEDOMETER");
  ros::NodeHandle n;

  ros::Publisher speedometer_topic = n.advertise<fsae_electric_vehicle::speedometer>("speedometer", 1000);

  fsae_electric_vehicle::speedometer speedometer;

  ros::Rate loop_rate{5};
  std::cout << "Init!" << std::endl;

  float x = 0;

  while (ros::ok()) {
    speedometer.speed = x;
    x += 0.1256;
    speedometer_topic.publish(speedometer);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
