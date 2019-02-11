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
#include "../../../include/Analog_Sensor.hpp"


  Analog_Sensor::Analog_Sensor(){

  }  

  Analog_Sensor::Analog_Sensor(int lower_limit, int upper_limit){
    this->lower_limit = lower_limit;
    this->upper_limit = upper_limit;
  }  

  void Analog_Sensor::set_data(int value){
    this->data = value; 
  }

  int Analog_Sensor::get_data(){
    return this->data;
  }

  void Analog_Sensor::set_units(int units){
    this->units = units;
  }

  int Analog_Sensor::get_units(){
    return this->units;
  }

  void Analog_Sensor::calculate_units(int raw_data){
    int calculated_units = this->upper_limit*(4096/raw_data);
    Analog_Sensor::set_units(calculated_units);
  }

