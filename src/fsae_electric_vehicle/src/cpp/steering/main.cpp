#include <cmath>

#include "ros/ros.h"
#include "fsae_electric_vehicle/steering.h"

#define PI 3.1415926535

int main(int argc, char **argv) {
  std::cout << "WHAT!?" << std::endl;
  ros::init(argc, argv, "Steering");
  std::cout << "After init" << std::endl;
  ros::NodeHandle n;
  std::cout << "After node handle" << std::endl;

  ros::Publisher steering_topic = n.advertise<fsae_electric_vehicle::steering>
                                  ("steering", 1000);

  std::cout << "After publisher" << std::endl;

  fsae_electric_vehicle::steering steering;

  ros::Rate loop_rate{5};
  std::cout << "Init!" << std::endl;

  //assumes data output includes values from 0-1023
  //int x = 0.0;
  int pos = 1023/2; //middle forward position
  bool right == true;


  while (ros::ok()) {
    steering.value = pos;

    // check if this produces sinusoidal output
    //x += 0.01;
    //pos = static_cast<int>(1023/2 * sin(x) + 1023/2); 
    
    //should produce pure linear output (like a triangle wave)
    if(right == true)
      pos++;
    else if(right == false)
      pos--;

    if(pos == 1023)
      right = false;
    else if(pos == 0)
      right = true;

    steering_topic.publish(steering);
    ros::spinOnce();
    loop_rate.sleep();
  }
}
