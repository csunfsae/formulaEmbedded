//-----------------------------------------------------------
// Auto-generated from package geometry_msgs.
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
const Quaternion = require('./Quaternion.js');

//-----------------------------------------------------------

class QuaternionStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.quaternion = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header;
      }
      else {
        this.header = new std_msgs.msg.Header();
      }

      if (initObj.hasOwnProperty('quaternion')) {
        this.quaternion = initObj.quaternion;
      }
      else {
        this.quaternion = new Quaternion();
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuaternionStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);

    // Serialize message field [quaternion]
    bufferOffset = Quaternion.serialize(obj.quaternion, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type QuaternionStamped
    let data = new QuaternionStamped(null);
    let len;
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);

    // Deserialize message field [quaternion]
    data.quaternion = Quaternion.deserialize(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header)
    // 32 is precalculated sum of the constant length fields
    return length + 32;
  }

  static datatype() {
    // Returns string type for a geometry_msgs/QuaternionStamped object
    return 'geometry_msgs/QuaternionStamped';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'e57f1e547e0e1fd13504588ffc8334e2'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This represents an orientation with reference coordinate frame and timestamp.

Header header
Quaternion quaternion

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

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QuaternionStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header);
    }
    else {
      resolved.header = new std_msgs.msg.Header();
    }

    if (msg.quaternion !== undefined) {
      resolved.quaternion = Quaternion.Resolve(msg.quaternion);
    }
    else {
      resolved.quaternion = new Quaternion();
    }

    return resolved;
  }
}

module.exports = QuaternionStamped
