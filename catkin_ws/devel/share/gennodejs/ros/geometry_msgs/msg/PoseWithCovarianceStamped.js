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
const PoseWithCovariance = require('./PoseWithCovariance.js');

//-----------------------------------------------------------

class PoseWithCovarianceStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pose = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header;
      }
      else {
        this.header = new std_msgs.msg.Header();
      }

      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose;
      }
      else {
        this.pose = new PoseWithCovariance();
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseWithCovarianceStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);

    // Serialize message field [pose]
    bufferOffset = PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type PoseWithCovarianceStamped
    let data = new PoseWithCovarianceStamped(null);
    let len;
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);

    // Deserialize message field [pose]
    data.pose = PoseWithCovariance.deserialize(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header)
    // 344 is precalculated sum of the constant length fields
    return length + 344;
  }

  static datatype() {
    // Returns string type for a geometry_msgs/PoseWithCovarianceStamped object
    return 'geometry_msgs/PoseWithCovarianceStamped';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '953b798c0f514ff060a53a3498ce6246'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
    const resolved = new PoseWithCovarianceStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header);
    }
    else {
      resolved.header = new std_msgs.msg.Header();
    }

    if (msg.pose !== undefined) {
      resolved.pose = PoseWithCovariance.Resolve(msg.pose);
    }
    else {
      resolved.pose = new PoseWithCovariance();
    }

    return resolved;
  }
}

module.exports = PoseWithCovarianceStamped
