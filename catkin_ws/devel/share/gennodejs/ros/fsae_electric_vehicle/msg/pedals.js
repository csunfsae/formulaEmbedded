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

class pedals {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front_right = null;
      this.front_left = null;
      this.back_left = null;
      this.back_right = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('front_right')) {
        this.front_right = initObj.front_right
      }
      else {
        this.front_right = 0.0;
      }
      if (initObj.hasOwnProperty('front_left')) {
        this.front_left = initObj.front_left
      }
      else {
        this.front_left = 0.0;
      }
      if (initObj.hasOwnProperty('back_left')) {
        this.back_left = initObj.back_left
      }
      else {
        this.back_left = 0.0;
      }
      if (initObj.hasOwnProperty('back_right')) {
        this.back_right = initObj.back_right
      }
      else {
        this.back_right = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pedals
    // Serialize message field [front_right]
    bufferOffset = _serializer.float32(obj.front_right, buffer, bufferOffset);
    // Serialize message field [front_left]
    bufferOffset = _serializer.float32(obj.front_left, buffer, bufferOffset);
    // Serialize message field [back_left]
    bufferOffset = _serializer.float32(obj.back_left, buffer, bufferOffset);
    // Serialize message field [back_right]
    bufferOffset = _serializer.float32(obj.back_right, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.string(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pedals
    let len;
    let data = new pedals(null);
    // Deserialize message field [front_right]
    data.front_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_left]
    data.front_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [back_left]
    data.back_left = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [back_right]
    data.back_right = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.time.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsae_electric_vehicle/pedals';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fcfc7f00aed5c6f9b38d528c27bedb97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 front_right
    float32 front_left
    float32 back_left
    float32 back_right
    string time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pedals(null);
    if (msg.front_right !== undefined) {
      resolved.front_right = msg.front_right;
    }
    else {
      resolved.front_right = 0.0
    }

    if (msg.front_left !== undefined) {
      resolved.front_left = msg.front_left;
    }
    else {
      resolved.front_left = 0.0
    }

    if (msg.back_left !== undefined) {
      resolved.back_left = msg.back_left;
    }
    else {
      resolved.back_left = 0.0
    }

    if (msg.back_right !== undefined) {
      resolved.back_right = msg.back_right;
    }
    else {
      resolved.back_right = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = ''
    }

    return resolved;
    }
};

module.exports = pedals;
