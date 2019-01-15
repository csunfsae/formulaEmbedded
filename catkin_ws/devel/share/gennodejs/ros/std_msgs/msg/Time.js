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

class Time {
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
    // Serializes a message object of type Time
    // Serialize message field [data]
    bufferOffset = _serializer.time(obj.data, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Time
    let data = new Time(null);
    let len;
    // Deserialize message field [data]
    data.data = _deserializer.time(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a std_msgs/Time object
    return 'std_msgs/Time';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'cd7166c74c552c311fbcc2fe5a7bc289'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time data
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Time(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = {secs: 0, nsecs: 0};
    }

    return resolved;
  }
}

module.exports = Time
