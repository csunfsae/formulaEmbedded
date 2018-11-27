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
      this.front_left_time = null;
      this.front_right_value = null;
      this.front_right_time = null;
      this.back_left_value = null;
      this.back_left_time = null;
      this.back_right_value = null;
      this.back_right_time = null;
    }
    else {
      if (initObj.hasOwnProperty('front_left_value')) {
        this.front_left_value = initObj.front_left_value
      }
      else {
        this.front_left_value = 0.0;
      }
      if (initObj.hasOwnProperty('front_left_time')) {
        this.front_left_time = initObj.front_left_time
      }
      else {
        this.front_left_time = '';
      }
      if (initObj.hasOwnProperty('front_right_value')) {
        this.front_right_value = initObj.front_right_value
      }
      else {
        this.front_right_value = 0.0;
      }
      if (initObj.hasOwnProperty('front_right_time')) {
        this.front_right_time = initObj.front_right_time
      }
      else {
        this.front_right_time = '';
      }
      if (initObj.hasOwnProperty('back_left_value')) {
        this.back_left_value = initObj.back_left_value
      }
      else {
        this.back_left_value = 0.0;
      }
      if (initObj.hasOwnProperty('back_left_time')) {
        this.back_left_time = initObj.back_left_time
      }
      else {
        this.back_left_time = '';
      }
      if (initObj.hasOwnProperty('back_right_value')) {
        this.back_right_value = initObj.back_right_value
      }
      else {
        this.back_right_value = 0.0;
      }
      if (initObj.hasOwnProperty('back_right_time')) {
        this.back_right_time = initObj.back_right_time
      }
      else {
        this.back_right_time = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type suspension_offset
    // Serialize message field [front_left_value]
    bufferOffset = _serializer.float32(obj.front_left_value, buffer, bufferOffset);
    // Serialize message field [front_left_time]
    bufferOffset = _serializer.string(obj.front_left_time, buffer, bufferOffset);
    // Serialize message field [front_right_value]
    bufferOffset = _serializer.float32(obj.front_right_value, buffer, bufferOffset);
    // Serialize message field [front_right_time]
    bufferOffset = _serializer.string(obj.front_right_time, buffer, bufferOffset);
    // Serialize message field [back_left_value]
    bufferOffset = _serializer.float32(obj.back_left_value, buffer, bufferOffset);
    // Serialize message field [back_left_time]
    bufferOffset = _serializer.string(obj.back_left_time, buffer, bufferOffset);
    // Serialize message field [back_right_value]
    bufferOffset = _serializer.float32(obj.back_right_value, buffer, bufferOffset);
    // Serialize message field [back_right_time]
    bufferOffset = _serializer.string(obj.back_right_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type suspension_offset
    let len;
    let data = new suspension_offset(null);
    // Deserialize message field [front_left_value]
    data.front_left_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_left_time]
    data.front_left_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [front_right_value]
    data.front_right_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_right_time]
    data.front_right_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [back_left_value]
    data.back_left_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [back_left_time]
    data.back_left_time = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [back_right_value]
    data.back_right_value = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [back_right_time]
    data.back_right_time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.front_left_time.length;
    length += object.front_right_time.length;
    length += object.back_left_time.length;
    length += object.back_right_time.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsae_electric_vehicle/suspension_offset';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8a6ea563b0ec5361d7adcaeba167aaab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 front_left_value 
    string front_left_time 
    float32 front_right_value 
    string front_right_time 
    float32 back_left_value 
    string back_left_time 
    float32 back_right_value 
    string back_right_time 
    
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

    if (msg.front_left_time !== undefined) {
      resolved.front_left_time = msg.front_left_time;
    }
    else {
      resolved.front_left_time = ''
    }

    if (msg.front_right_value !== undefined) {
      resolved.front_right_value = msg.front_right_value;
    }
    else {
      resolved.front_right_value = 0.0
    }

    if (msg.front_right_time !== undefined) {
      resolved.front_right_time = msg.front_right_time;
    }
    else {
      resolved.front_right_time = ''
    }

    if (msg.back_left_value !== undefined) {
      resolved.back_left_value = msg.back_left_value;
    }
    else {
      resolved.back_left_value = 0.0
    }

    if (msg.back_left_time !== undefined) {
      resolved.back_left_time = msg.back_left_time;
    }
    else {
      resolved.back_left_time = ''
    }

    if (msg.back_right_value !== undefined) {
      resolved.back_right_value = msg.back_right_value;
    }
    else {
      resolved.back_right_value = 0.0
    }

    if (msg.back_right_time !== undefined) {
      resolved.back_right_time = msg.back_right_time;
    }
    else {
      resolved.back_right_time = ''
    }

    return resolved;
    }
};

module.exports = suspension_offset;
