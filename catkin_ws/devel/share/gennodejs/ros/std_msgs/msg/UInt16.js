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

class UInt16 {
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
        this.data = 0;
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UInt16
    // Serialize message field [data]
    bufferOffset = _serializer.uint16(obj.data, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type UInt16
    let data = new UInt16(null);
    let len;
    // Deserialize message field [data]
    data.data = _deserializer.uint16(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a std_msgs/UInt16 object
    return 'std_msgs/UInt16';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '1df79edf208b629fe6b81923a544552d'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 data
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UInt16(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = 0;
    }

    return resolved;
  }
}

module.exports = UInt16
