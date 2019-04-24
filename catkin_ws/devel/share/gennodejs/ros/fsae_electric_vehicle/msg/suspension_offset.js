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

class suspension_offset {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front_left_value = null;
      this.front_right_value = null;
      this.back_left_value = null;
      this.back_right_value = null;
      this.time_collected = null;
    }
    else {
      if (initObj.hasOwnProperty('front_left_value')) {
        this.front_left_value = initObj.front_left_value
      }
      else {
        this.front_left_value = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_value')) {
        this.front_right_value = initObj.front_right_value
      }
      else {
        this.front_right_value = 0.0;
      }
      if (initObj.hasOwnProperty('back_left_value')) {
        this.back_left_value = initObj.back_left_value
      }
      else {
        this.back_left_value = 0.0;
      }
      if (initObj.hasOwnProperty('back_right_value')) {
        this.back_right_value = initObj.back_right_value
      }
      else {
        this.back_right_value = 0.0;
      }
      if (initObj.hasOwnProperty('time_collected')) {
        this.time_collected = initObj.time_collected
      }
      else {
        this.time_collected = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type suspension_offset
    // Serialize message field [front_left_value]
    bufferOffset = _serializer.float32(obj.front_left_value, buffer, bufferOffset);
    // Serialize message field [front_right_value]
    bufferOffset = _serializer.float32(obj.front_right_value, buffer, bufferOffset);
    // Serialize message field [back_left_value]
    bufferOffset = _serializer.float32(obj.back_left_value, buffer, bufferOffset);
    // Serialize message field [back_right_value]
    bufferOffset = _serializer.float32(obj.back_right_value, buffer, bufferOffset);
    // Serialize message field [time_collected]
    bufferOffset = _serializer.string(obj.time_collected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type suspension_offset
    let len;
    let data = new suspension_offset(null);
    // Deserialize message field [front_left_value]
    data.front_left_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_right_value]
    data.front_right_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [back_left_value]
    data.back_left_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [back_right_value]
    data.back_right_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_collected]
    data.time_collected = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.time_collected.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsae_electric_vehicle/suspension_offset';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efe3c26acf397027388f0a2994b3fca9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 front_left_value 
    float32 front_right_value 
    float32 back_left_value 
    float32 back_right_value 
    string time_collected
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new suspension_offset(null);
    if (msg.front_left_value !== undefined) {
      resolved.front_left_value = msg.front_left_value;
    }
    else {
      resolved.front_left_value = 0.0
    }

    if (msg.front_right_value !== undefined) {
      resolved.front_right_value = msg.front_right_value;
    }
    else {
      resolved.front_right_value = 0.0
    }

    if (msg.back_left_value !== undefined) {
      resolved.back_left_value = msg.back_left_value;
    }
    else {
      resolved.back_left_value = 0.0
    }

    if (msg.back_right_value !== undefined) {
      resolved.back_right_value = msg.back_right_value;
    }
    else {
      resolved.back_right_value = 0.0
    }

    if (msg.time_collected !== undefined) {
      resolved.time_collected = msg.time_collected;
    }
    else {
      resolved.time_collected = ''
    }

    return resolved;
    }
};

module.exports = suspension_offset;
