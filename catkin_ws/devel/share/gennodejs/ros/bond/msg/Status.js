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
const std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.instance_id = null;
      this.active = null;
      this.heartbeat_timeout = null;
      this.heartbeat_period = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header;
      }
      else {
        this.header = new std_msgs.msg.Header();
      }

      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id;
      }
      else {
        this.id = '';
      }

      if (initObj.hasOwnProperty('instance_id')) {
        this.instance_id = initObj.instance_id;
      }
      else {
        this.instance_id = '';
      }

      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active;
      }
      else {
        this.active = false;
      }

      if (initObj.hasOwnProperty('heartbeat_timeout')) {
        this.heartbeat_timeout = initObj.heartbeat_timeout;
      }
      else {
        this.heartbeat_timeout = 0.0;
      }

      if (initObj.hasOwnProperty('heartbeat_period')) {
        this.heartbeat_period = initObj.heartbeat_period;
      }
      else {
        this.heartbeat_period = 0.0;
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);

    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);

    // Serialize message field [instance_id]
    bufferOffset = _serializer.string(obj.instance_id, buffer, bufferOffset);

    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);

    // Serialize message field [heartbeat_timeout]
    bufferOffset = _serializer.float32(obj.heartbeat_timeout, buffer, bufferOffset);

    // Serialize message field [heartbeat_period]
    bufferOffset = _serializer.float32(obj.heartbeat_period, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Status
    let data = new Status(null);
    let len;
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);

    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [instance_id]
    data.instance_id = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);

    // Deserialize message field [heartbeat_timeout]
    data.heartbeat_timeout = _deserializer.float32(buffer, bufferOffset);

    // Deserialize message field [heartbeat_period]
    data.heartbeat_period = _deserializer.float32(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header)
    length += _getByteLength(object.id);
    length += _getByteLength(object.instance_id);
    // 17 is precalculated sum of the constant length fields
    return length + 17;
  }

  static datatype() {
    // Returns string type for a bond/Status object
    return 'bond/Status';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'eacc84bf5d65b6777d4c50f463dfb9c8'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
string id  # ID of the bond
string instance_id  # Unique ID for an individual in a bond
bool active

# Including the timeouts for the bond makes it easier to debug mis-matches
# between the two sides.
float32 heartbeat_timeout
float32 heartbeat_period

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
    const resolved = new Status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header);
    }
    else {
      resolved.header = new std_msgs.msg.Header();
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = '';
    }

    if (msg.instance_id !== undefined) {
      resolved.instance_id = msg.instance_id;
    }
    else {
      resolved.instance_id = '';
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false;
    }

    if (msg.heartbeat_timeout !== undefined) {
      resolved.heartbeat_timeout = msg.heartbeat_timeout;
    }
    else {
      resolved.heartbeat_timeout = 0.0;
    }

    if (msg.heartbeat_period !== undefined) {
      resolved.heartbeat_period = msg.heartbeat_period;
    }
    else {
      resolved.heartbeat_period = 0.0;
    }

    return resolved;
  }
}

module.exports = Status
