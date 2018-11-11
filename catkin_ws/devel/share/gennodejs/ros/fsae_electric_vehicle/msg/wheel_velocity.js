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

class wheel_velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Value = null;
    }
    else {
      if (initObj.hasOwnProperty('Value')) {
        this.Value = initObj.Value
      }
      else {
        this.Value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wheel_velocity
    // Serialize message field [Value]
    bufferOffset = _serializer.string(obj.Value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wheel_velocity
    let len;
    let data = new wheel_velocity(null);
    // Deserialize message field [Value]
    data.Value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.Value.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fsae_electric_vehicle/wheel_velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c39d4884ea4866f0b5cd78380dec7bc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string Value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new wheel_velocity(null);
    if (msg.Value !== undefined) {
      resolved.Value = msg.Value;
    }
    else {
      resolved.Value = ''
    }

    return resolved;
    }
};

module.exports = wheel_velocity;
