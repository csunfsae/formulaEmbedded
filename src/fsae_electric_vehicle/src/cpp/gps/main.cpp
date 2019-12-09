#include <ctime>
#include <stdlib.h>

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

  // Coordinates for JD Hall
  float x = 34.241993;
  float y = -118.528624;

  float alt = 0;
  float sats = 0;
  float t_start = time(0); // current time

  srand(static_cast <unsigned> (time(0)));

  while (ros::ok()) {
    gps.latitude = x;
    gps.longitude = y;
    gps.alt = alt;
    gps.sats = sats;
    gps.time = time(0) - t_start;
    
    x += (-0.00001) + static_cast<float>(rand()) / 
      (static_cast<float> (RAND_MAX/(0.00001+0.00001))); // set values for simulation ONLY
    y += (-0.00001) + static_cast<float>(rand()) / 
      (static_cast<float> (RAND_MAX/(0.00001+0.00001)));

    gps_topic.publish(gps);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
