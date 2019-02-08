#ifndef ADS7828_H
#define ADS7828_H
#include <stdio.h>
#include <string>
#include <iostream>
#include <Analog_Sensor.hpp>
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

class ADS7828{
  private:
  std::string i2c_bus_name;
  int acquired_bus;
  int device_address;
  int data_buffer[1];
  Analog_Sensor* sensor_list[8];
  char COMMANDS_BUFFER[8] = {
                            (ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH0),                
                            (ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH1),                
                            (ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH2),                
                            (ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH3),                
                            (ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH4),                
                            (ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH5),                
                            (ADS7828_CONFIG_SD_SINGLE | ADS7828_CONFIG_PD_REFOFF_ADON | ADS7828_CONFIG_CS_CH6),               
  };
  public:
  ADS7828();
  ADS7828(std::string i2c_bus_name, int address);
  void update();
  void add_potentiometer();
  void add_potentiometer(int lower_limit, int upper_limit);
  void add_sensor(Analog_Sensor* sensor);
  int get_sensor_data(int num);
  void calculate_units();
  int get_units(int num);
#endif
