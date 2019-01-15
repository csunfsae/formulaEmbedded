// Auto-generated. Do not edit!

// (in-package fsae_electric_vehicle.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class imu_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gyro_x = null;
      this.gyro_y = null;
      this.gyro_z = null;
      this.gyro_time = null;
      this.accel_x = null;
      this.accel_y = null;
      this.accel_z = null;
      this.accel_time = null;
      this.compass_x = null;
      this.compass_y = null;
      this.compass_z = null;
      this.compass_time = null;
    }
    else {
      if (initObj.hasOwnProperty('gyro_x')) {
        this.gyro_x = initObj.gyro_x
      }
      else {
        this.gyro_x = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_y')) {
        this.gyro_y = initObj.gyro_y
      }
      else {
        this.gyro_y = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_z')) {
        this.gyro_z = initObj.gyro_z
      }
      else {
        this.gyro_z = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_time')) {
        this.gyro_time = initObj.gyro_time
      }
      else {
        this.gyro_time = '';
      }
      if (initObj.hasOwnProperty('accel_x')) {
        this.accel_x = initObj.accel_x
      }
      else {
        this.accel_x = 0.0;
      }
      if (initObj.hasOwnProperty('accel_y')) {
        this.accel_y = initObj.accel_y
      }
      else {
        this.accel_y = 0.0;
      }
      if (initObj.hasOwnProperty('accel_z')) {
        this.accel_z = initObj.accel_z
      }
      else {
        this.accel_z = 0.0;
      }
      if (initObj.hasOwnProperty('accel_time')) {
        this.accel_time = initObj.accel_time
      }
      else {
        this.accel_time = '';
      }
      if (initObj.hasOwnProperty('compass_x')) {
        this.compass_x = initObj.compass_x
      }
      else {
        this.compass_x = 0.0;
      }
      if (initObj.hasOwnProperty('compass_y')) {
        this.compass_y = initObj.compass_y
      }
      else {
        this.compass_y = 0.0;
      }
      if (initObj.hasOwnProperty('compass_z')) {
        this.compass_z = initObj.compass_z
      }
      else {
        this.compass_z = 0.0;
      }
      if (initObj.hasOwnProperty('compass_time')) {
        this.compass_time = initObj.compass_time
      }
      else {
        this.compass_time = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type imu_data
    // Serialize message field [gyro_x]
    bufferOffset = _serializer.float32(obj.gyro_x, buffer, bufferOffset);
    // Serialize message field [gyro_y]
    bufferOffset = _serializer.float32(obj.gyro_y, buffer, bufferOffset);
    // Serialize message field [gyro_z]
    bufferOffset = _serializer.float32(obj.gyro_z, buffer, bufferOffset);
    // Serialize message field [gyro_time]
    bufferOffset = _serializer.string(obj.gyro_time, buffer, bufferOffset);
    // Serialize message field [accel_x]
    bufferOffset = _serializer.float32(obj.accel_x, buffer, bufferOffset);
    // Serialize message field [accel_y]
    bufferOffset = _serializer.float32(obj.accel_y, buffer, bufferOffset);
    // Serialize message field [accel_z]
    bufferOffset = _serializer.float32(obj.accel_z, buffer, bufferOffset);
    // Serialize message field [accel_time]
    bufferOffset = _serializer.string(obj.accel_time, buffer, bufferOffset);
    // Serialize message field [compass_x]
    bufferOffset = _serializer.float32(obj.compass_x, buffer, bufferOffset);
    // Serialize message field [compass_y]
    bufferOffset = _serializer.float32(obj.compass_y, buffer, bufferOffset);
    // Serialize message field [compass_z]
    bufferOffset = _serializer.float32(obj.compass_z, buffer, bufferOffset);
    // Serialize message field [compass_time]
    bufferOffset = _serializer.string(obj.compass_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type imu_data
    let len;
    let data = new imu_data(null);
    // Deserialize message field [gyro_x]
    data.gyro_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_y]
    data.gyro_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_z]
    data.gyro_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_time]
    data.gyro_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [accel_x]
    data.accel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_y]
    data.accel_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_z]
    data.accel_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_time]
    data.accel_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [compass_x]
    data.compass_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [compass_y]
    data.compass_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [compass_z]
    data.compass_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [compass_time]
    data.compass_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.gyro_time.length;
    length += object.accel_time.length;
    length += object.compass_time.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsae_electric_vehicle/imu_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96e2fc03b6486059b9ae94e0a184b112';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 gyro_x 
    float32 gyro_y 
    float32 gyro_z 
    string gyro_time
    float32 accel_x 
    float32 accel_y 
    float32 accel_z 
    string accel_time
    float32 compass_x 
    float32 compass_y 
    float32 compass_z 
    string compass_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new imu_data(null);
    if (msg.gyro_x !== undefined) {
      resolved.gyro_x = msg.gyro_x;
    }
    else {
      resolved.gyro_x = 0.0
    }

    if (msg.gyro_y !== undefined) {
      resolved.gyro_y = msg.gyro_y;
    }
    else {
      resolved.gyro_y = 0.0
    }

    if (msg.gyro_z !== undefined) {
      resolved.gyro_z = msg.gyro_z;
    }
    else {
      resolved.gyro_z = 0.0
    }

    if (msg.gyro_time !== undefined) {
      resolved.gyro_time = msg.gyro_time;
    }
    else {
      resolved.gyro_time = ''
    }

    if (msg.accel_x !== undefined) {
      resolved.accel_x = msg.accel_x;
    }
    else {
      resolved.accel_x = 0.0
    }

    if (msg.accel_y !== undefined) {
      resolved.accel_y = msg.accel_y;
    }
    else {
      resolved.accel_y = 0.0
    }

    if (msg.accel_z !== undefined) {
      resolved.accel_z = msg.accel_z;
    }
    else {
      resolved.accel_z = 0.0
    }

    if (msg.accel_time !== undefined) {
      resolved.accel_time = msg.accel_time;
    }
    else {
      resolved.accel_time = ''
    }

    if (msg.compass_x !== undefined) {
      resolved.compass_x = msg.compass_x;
    }
    else {
      resolved.compass_x = 0.0
    }

    if (msg.compass_y !== undefined) {
      resolved.compass_y = msg.compass_y;
    }
    else {
      resolved.compass_y = 0.0
    }

    if (msg.compass_z !== undefined) {
      resolved.compass_z = msg.compass_z;
    }
    else {
      resolved.compass_z = 0.0
    }

    if (msg.compass_time !== undefined) {
      resolved.compass_time = msg.compass_time;
    }
    else {
      resolved.compass_time = ''
    }

    return resolved;
    }
};

module.exports = imu_data;
