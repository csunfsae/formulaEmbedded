//-----------------------------------------------------------
// Auto-generated from package bond.
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

class Constants {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Constants
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Constants
    let data = new Constants(null);
    let len;
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a bond/Constants object
    return 'bond/Constants';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '6fc594dc1d7bd7919077042712f8c8b0'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 DEAD_PUBLISH_PERIOD = 0.05
float32 DEFAULT_CONNECT_TIMEOUT = 10.0
float32 DEFAULT_HEARTBEAT_TIMEOUT = 4.0
float32 DEFAULT_DISCONNECT_TIMEOUT = 2.0
float32 DEFAULT_HEARTBEAT_PERIOD = 1.0

string DISABLE_HEARTBEAT_TIMEOUT_PARAM=/bond_disable_heartbeat_timeout
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Constants(null);
    return resolved;
  }
}

// Constants for message
Constants.Constants = {
  DEAD_PUBLISH_PERIOD: 0.05,
  DEFAULT_CONNECT_TIMEOUT: 10,
  DEFAULT_HEARTBEAT_TIMEOUT: 4,
  DEFAULT_DISCONNECT_TIMEOUT: 2,
  DEFAULT_HEARTBEAT_PERIOD: 1,
  DISABLE_HEARTBEAT_TIMEOUT_PARAM: '/bond_disable_heartbeat_timeout',
}

module.exports = Constants
