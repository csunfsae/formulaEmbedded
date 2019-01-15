//-----------------------------------------------------------
// Auto-generated from package actionlib_msgs.
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

class GoalID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.id = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp;
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id;
      }
      else {
        this.id = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalID
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);

    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type GoalID
    let data = new GoalID(null);
    let len;
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);

    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.id);
    // 12 is precalculated sum of the constant length fields
    return length + 12;
  }

  static datatype() {
    // Returns string type for a actionlib_msgs/GoalID object
    return 'actionlib_msgs/GoalID';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '302881f31927c1df708a2dbab0e80ee8'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalID(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0};
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = '';
    }

    return resolved;
  }
}

module.exports = GoalID
