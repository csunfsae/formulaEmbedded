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
const std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Log {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.level = null;
      this.name = null;
      this.msg = null;
      this.file = null;
      this.function = null;
      this.line = null;
      this.topics = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header;
      }
      else {
        this.header = new std_msgs.msg.Header();
      }

      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level;
      }
      else {
        this.level = 0;
      }

      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name;
      }
      else {
        this.name = '';
      }

      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg;
      }
      else {
        this.msg = '';
      }

      if (initObj.hasOwnProperty('file')) {
        this.file = initObj.file;
      }
      else {
        this.file = '';
      }

      if (initObj.hasOwnProperty('function')) {
        this.function = initObj.function;
      }
      else {
        this.function = '';
      }

      if (initObj.hasOwnProperty('line')) {
        this.line = initObj.line;
      }
      else {
        this.line = 0;
      }

      if (initObj.hasOwnProperty('topics')) {
        this.topics = initObj.topics;
      }
      else {
        this.topics = [];
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Log
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);

    // Serialize message field [level]
    bufferOffset = _serializer.byte(obj.level, buffer, bufferOffset);

    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);

    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);

    // Serialize message field [file]
    bufferOffset = _serializer.string(obj.file, buffer, bufferOffset);

    // Serialize message field [function]
    bufferOffset = _serializer.string(obj.function, buffer, bufferOffset);

    // Serialize message field [line]
    bufferOffset = _serializer.uint32(obj.line, buffer, bufferOffset);


    // Serialize message field [topics]
    bufferOffset = _arraySerializer.string(obj.topics, buffer, bufferOffset, null);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Log
    let data = new Log(null);
    let len;
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);

    // Deserialize message field [level]
    data.level = _deserializer.byte(buffer, bufferOffset);

    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [file]
    data.file = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [function]
    data.function = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [line]
    data.line = _deserializer.uint32(buffer, bufferOffset);

    // Deserialize message field [topics]
    data.topics = _arrayDeserializer.string(buffer, bufferOffset, null);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header)
    length += _getByteLength(object.name);
    length += _getByteLength(object.msg);
    length += _getByteLength(object.file);
    length += _getByteLength(object.function);
    for(let i = 0; i < object.topics.length; ++i) {
      length += 4 + _getByteLength(object.topics[i]);
    }
    // 25 is precalculated sum of the constant length fields
    return length + 25;
  }

  static datatype() {
    // Returns string type for a rosgraph_msgs/Log object
    return 'rosgraph_msgs/Log';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'acffd30cd6b6de30f120938c17c593fb'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ##
## Severity level constants
##
byte DEBUG=1 #debug level
byte INFO=2  #general level
byte WARN=4  #warning level
byte ERROR=8 #error level
byte FATAL=16 #fatal/critical level
##
## Fields
##
Header header
byte level
string name # name of the node
string msg # message 
string file # file the message came from
string function # function the message came from
uint32 line # line the message came from
string[] topics # topic names that the node publishes

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Log(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header);
    }
    else {
      resolved.header = new std_msgs.msg.Header();
    }

    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0;
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = '';
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = '';
    }

    if (msg.file !== undefined) {
      resolved.file = msg.file;
    }
    else {
      resolved.file = '';
    }

    if (msg.function !== undefined) {
      resolved.function = msg.function;
    }
    else {
      resolved.function = '';
    }

    if (msg.line !== undefined) {
      resolved.line = msg.line;
    }
    else {
      resolved.line = 0;
    }

    if (msg.topics !== undefined) {
      resolved.topics = msg.topics;
    }
    else {
      resolved.topics = [];
    }

    return resolved;
  }
}

// Constants for message
Log.Constants = {
  DEBUG: 1,
  INFO: 2,
  WARN: 4,
  ERROR: 8,
  FATAL: 16,
}

module.exports = Log
