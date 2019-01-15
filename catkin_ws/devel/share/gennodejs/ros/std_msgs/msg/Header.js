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

class Header {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seq = null;
      this.stamp = null;
      this.frame_id = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq;
      }
      else {
        this.seq = 0;
      }

      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp;
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id;
      }
      else {
        this.frame_id = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Header
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);

    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);

    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type Header
    let data = new Header(null);
    let len;
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);

    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);

    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.frame_id);
    // 16 is precalculated sum of the constant length fields
    return length + 16;
  }

  static datatype() {
    // Returns string type for a std_msgs/Header object
    return 'std_msgs/Header';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '2176decaecbce78abc3b96ef049fabed'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Header(null);
    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0;
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0};
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = '';
    }

    return resolved;
  }
}

module.exports = Header
