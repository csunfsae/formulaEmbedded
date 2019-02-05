#include <stdio.h>
#include <iostream>
#include <sstream>
#include <string>
#include <sys/ioctl.h>
#include <linux/i2c.h>
#include <linux/i2c-dev.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <algorithm>
#include <bits/stdc++.h>
#include "../include/Analog_Sensor.h"
#include "../include/ADS7828.h"

  ADS7828::ADS7828(){
   i2c_bus_name = "/dev/i2c-1";
   device_address = 0x49;
  }

  ADS7828::ADS7828(std::string bus_name, int address){
   i2c_bus_name = bus_name; 
   device_address = address;

   if(((acquired_bus) = open(i2c_bus_name.c_str(), O_RDWR)) < 0){
    perror("Failed to open i2c bus");
    exit(1);
   }
  };  

  void ADS7828::update(){
    int kount = 0;
    if(ioctl(acquired_bus, I2C_SLAVE, device_address) < 0){
      printf("Failed to acquire bus access and/or talk to slave. \n"); 
      exit(1);
    }
    while((&sensor_list[kount] != NULL) || (kount < 8)){
      write(acquired_bus, &COMMANDS_BUFFER[kount], 1); 
      if (read(acquired_bus,data_buffer,2) != 2) {
        /* ERROR HANDLING: i2c transaction failed */
        printf("Failed to read from the i2c bus.\n");
        printf("\n\n");
      } else {
        sensor_list[kount].set_data((((data_buffer[0] & 0x0F)*256) + data_buffer[1]));
      }
      kount++;
    }
  };

  void ADS7828::add_sensor(Analog_Sensor sensor){
    //IM WRITING THIS LIKE THIS BECUASE I WANT A FIXED ARRAY SIZE
    for(int kount=0;kount<8;kount++){
      if(&sensor_list[kount] == NULL){
        sensor_list[kount] = sensor;
      }else if(kount==7){
        printf("NO MORE SPACE FOR SENSORS ON THIS ADC");
      }
    }
  };

  int ADS7828::get_sensor_data(int num){
    return sensor_list[num].get_data();
  }; 

