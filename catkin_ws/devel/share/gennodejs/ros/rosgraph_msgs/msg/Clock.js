//-----------------------------------------------------------
// Auto-generated from package rosgraph_msgs.
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

class Clock {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clock = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock;
      }
      else {
        this.clock = {secs: 0, nsecs: 0};
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Clock
    // Serialize message field [clock]
    bufferOffset = _serializer.time(obj.clock, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Clock
    let data = new Clock(null);
    let len;
    // Deserialize message field [clock]
    data.clock = _deserializer.time(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a rosgraph_msgs/Clock object
    return 'rosgraph_msgs/Clock';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'a9c97c1d230cfc112e270351a944ee47'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # roslib/Clock is used for publishing simulated time in ROS. 
# This message simply communicates the current time.
# For more information, see http://www.ros.org/wiki/Clock
time clock
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Clock(null);
    if (msg.clock !== undefined) {
      resolved.clock = msg.clock;
    }
    else {
      resolved.clock = {secs: 0, nsecs: 0};
    }

    return resolved;
  }
}

module.exports = Clock
