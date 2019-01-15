//-----------------------------------------------------------
// Auto-generated from package std_msgs.
// !! Do not edit !!
//-----------------------------------------------------------

"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength

//-----------------------------------------------------------

class Duration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data;
      }
      else {
        this.data = {secs: 0, nsecs: 0};
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Duration
    // Serialize message field [data]
    bufferOffset = _serializer.duration(obj.data, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Duration
    let data = new Duration(null);
    let len;
    // Deserialize message field [data]
    data.data = _deserializer.duration(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a std_msgs/Duration object
    return 'std_msgs/Duration';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '3e286caf4241d664e55f3ad380e2ae46'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    duration data
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Duration(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = {secs: 0, nsecs: 0};
    }

    return resolved;
  }
}

module.exports = Duration
