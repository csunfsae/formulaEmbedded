/*
 * CSUN FSAE EV 2018
 * ROS NODE: VISHAY_POTENTIOMETER_PE30_LONG
 * Topics Subscribed: None 
 * Topics Publishing: steering_wheel 
 * Tag: 
*/
#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>
#include <string>
#include <typeinfo>
#include <iostream>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include "fsae_electric_vehicle/steering_wheel.h"
#define PI 3.14159265
// I2C address of the device
#define ADS7828_DEFAULT_ADDRESS			 0x49
#define ADS7828_CONFIG_SD_DIFFERENTIAL       0b00000000
#define ADS7828_CONFIG_SD_SINGLE             0b10000000
#define ADS7828_CONFIG_CS_CH0                0b00000000
#define ADS7828_CONFIG_CS_CH1                0b00010000
#define ADS7828_CONFIG_CS_CH2                0b00100000
#define ADS7828_CONFIG_CS_CH3                0b00110000
#define ADS7828_CONFIG_CS_CH4                0b01000000
#define ADS7828_CONFIG_CS_CH5                0b01010000
#define ADS7828_CONFIG_CS_CH6                0b01100000
#define ADS7828_CONFIG_CS_CH7                0b01110000
#define ADS7828_CONFIG_PD_OFF                0b00000000
#define ADS7828_CONFIG_PD_REFOFF_ADON        0b00000100
#define ADS7828_CONFIG_PD_REFON_ADOFF        0b00001000
#define ADS7828_CONFIG_PD_REFON_ADON         0b00001100
void clear_screen();

int main(int argc, char **argv)
{
  int file;
  std::string filename = "/dev/i2c-0";

  //This sets the i2c bus 0 for reading and writing
  if ((file = open(filename.c_str(), O_RDWR)) < 0) {
    perror("Failed to open the i2c bus");
    exit(1);
  }


  //This requests the ADC on address 0x49
  int address = 0x49; 

  

  char bufe[1] = {(ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH0)};

  unsigned char buf[2] = {0};
  float data;
  char channel;
  int test;


  //Basic ROS setup for the node
  ros::init(argc, argv, "VISHAY_POTENTIOMETER_PE30_LONG");
  ros::NodeHandle n;
  
  fsae_electric_vehicle::steering_wheel steering_wheel_msg; 
  ros::Publisher steering_wheel_topic = n.advertise<fsae_electric_vehicle::steering_wheel>("steering_wheel", 1000);
  ros::Rate loop_rate(500);

int avg;
int kount;
  while(ros::ok()){
      // Using I2C Read
// for(int x=0;x<5;x++){
	if (ioctl(file, I2C_SLAVE , address) < 0) {
	printf("Failed to acquire bus access and/or talk to slave.\n");
	exit(1);
	}
	write(file, bufe , 1); 

	if (read(file,buf,2) != 2) {
	/* ERROR HANDLING: i2c transaction failed */
	printf("Failed to read from the i2c bus.\n");
	printf("\n\n");
	} else {
	test = (((buf[0] & 0x0F)*256) + buf[1]) ;
	//test = ((buf[0] << 8) + buf[1]) ;
	std::cout << test << std::endl;
	}
//	avg = avg + test;
//	if(kount%6 == 0){
//	  avg = (avg /5); 
//	  test = 0;
//	  std::cout << avg << std::endl;
//	  avg = 0;
//	}else{
//	  kount++;
//	}
  //}
	ros::spinOnce();
	loop_rate.sleep();
    //clear_screen();
  }


  return 0;
}


void clear_screen(){
  for(int x=0;x<50;x++){
    std::cout << "\n";
  }

}
