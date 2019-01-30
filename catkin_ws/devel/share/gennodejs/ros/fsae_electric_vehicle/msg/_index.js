
"use strict";

let compass = require('./compass.js');
let steering_input = require('./steering_input.js');
let gyroscope = require('./gyroscope.js');
let pedals = require('./pedals.js');
let wheel_velocity = require('./wheel_velocity.js');
let imu_data = require('./imu_data.js');
let tire_pressure = require('./tire_pressure.js');
let temp_and_pressure = require('./temp_and_pressure.js');
let steering_wheel = require('./steering_wheel.js');
let suspension = require('./suspension.js');
let accelerometer = require('./accelerometer.js');
let suspension_offset = require('./suspension_offset.js');

module.exports = {
  compass: compass,
  steering_input: steering_input,
  gyroscope: gyroscope,
  pedals: pedals,
  wheel_velocity: wheel_velocity,
  imu_data: imu_data,
  tire_pressure: tire_pressure,
  temp_and_pressure: temp_and_pressure,
  steering_wheel: steering_wheel,
  suspension: suspension,
  accelerometer: accelerometer,
  suspension_offset: suspension_offset,
};
