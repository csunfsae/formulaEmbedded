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
#include "../../../include/Analog_Sensor.hpp"
#include "../../../include/ADS7828.hpp"

  ADS7828::ADS7828(){
   this->i2c_bus_name = "/dev/i2c-1";
   this->device_address = 0x49;
  }

  ADS7828::ADS7828(std::string bus_name, int address){
   this->i2c_bus_name = bus_name; 
   this->device_address = address;
   for(int kount=0;kount<8;kount++)
     this->sensor_list[kount]=NULL;
   if(((this->acquired_bus) = open(this->i2c_bus_name.c_str(), O_RDWR)) < 0){
    perror("Failed to open i2c bus");
    exit(1);
   }
  };  

  void ADS7828::update(){
    int kount = 0;
    if(ioctl(this->acquired_bus, I2C_SLAVE, this->device_address) < 0){
      printf("Failed to acquire bus access and/or talk to slave. \n"); 
      exit(1);
    }
    char buffer[1] = {0};
    while((this->sensor_list[kount] != NULL) || (kount < 2)){
      buffer[0] = {(COMMANDS_BUFFER[kount])};
      write(this->acquired_bus, buffer,1); 
      if (read(this->acquired_bus,this->data_buffer,2) != 2) {
        /* ERROR HANDLING: i2c transaction failed */
        std::cout << this->data_buffer[0] << std::endl;
        printf("Failed to read from the i2c bus.\n");
        printf("\n\n");
      } else { 
        this->sensor_list[kount]->set_data((((this->data_buffer[0] & 0x0F)*256) + this->data_buffer[1]));
      }
      kount++;
    }
  };

  void ADS7828::add_potentiometer(){
    Analog_Sensor* new_potentiometer = new Analog_Sensor();
    ADS7828::add_sensor(new_potentiometer);
  }

  void ADS7828::add_sensor(Analog_Sensor* sensor){
    //IM WRITING THIS LIKE THIS BECUASE I WANT A FIXED ARRAY SIZE
    for(int kount=0;kount<8;kount++){
      if(this->sensor_list[kount] == NULL){
        this->sensor_list[kount] = sensor;
        break;
      }else if(kount==7){
        printf("NO MORE SPACE FOR SENSORS ON THIS ADC");
      }
    }
  };

  int ADS7828::get_sensor_data(int num){
    return this->sensor_list[num]->get_data();
  };

