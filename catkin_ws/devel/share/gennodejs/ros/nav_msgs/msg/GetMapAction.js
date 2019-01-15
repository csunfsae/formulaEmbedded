//-----------------------------------------------------------
// Auto-generated from package nav_msgs.
// !! Do not edit !!
//-----------------------------------------------------------

"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength
const GetMapActionGoal = require('./GetMapActionGoal.js');
const GetMapActionResult = require('./GetMapActionResult.js');
const GetMapActionFeedback = require('./GetMapActionFeedback.js');

//-----------------------------------------------------------

class GetMapAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal;
      }
      else {
        this.action_goal = new GetMapActionGoal();
      }

      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result;
      }
      else {
        this.action_result = new GetMapActionResult();
      }

      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback;
      }
      else {
        this.action_feedback = new GetMapActionFeedback();
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetMapAction
    // Serialize message field [action_goal]
    bufferOffset = GetMapActionGoal.serialize(obj.action_goal, buffer, bufferOffset);

    // Serialize message field [action_result]
    bufferOffset = GetMapActionResult.serialize(obj.action_result, buffer, bufferOffset);

    // Serialize message field [action_feedback]
    bufferOffset = GetMapActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type GetMapAction
    let data = new GetMapAction(null);
    let len;
    // Deserialize message field [action_goal]
    data.action_goal = GetMapActionGoal.deserialize(buffer, bufferOffset);

    // Deserialize message field [action_result]
    data.action_result = GetMapActionResult.deserialize(buffer, bufferOffset);

    // Deserialize message field [action_feedback]
    data.action_feedback = GetMapActionFeedback.deserialize(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GetMapActionGoal.getMessageSize(object.action_goal)
    length += GetMapActionResult.getMessageSize(object.action_result)
    length += GetMapActionFeedback.getMessageSize(object.action_feedback)
    return length;
  }

  static datatype() {
    // Returns string type for a nav_msgs/GetMapAction object
    return 'nav_msgs/GetMapAction';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'e611ad23fbf237c031b7536416dc7cd7'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

GetMapActionGoal action_goal
GetMapActionResult action_result
GetMapActionFeedback action_feedback

================================================================================
MSG: nav_msgs/GetMapActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
GetMapGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id

================================================================================
MSG: nav_msgs/GetMapGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Get the map as a nav_msgs/OccupancyGrid

================================================================================
MSG: nav_msgs/GetMapActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
GetMapResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text

================================================================================
MSG: nav_msgs/GetMapResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
nav_msgs/OccupancyGrid map

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin

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

================================================================================
MSG: nav_msgs/GetMapActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
GetMapFeedback feedback

================================================================================
MSG: nav_msgs/GetMapFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# no feedback
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetMapAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = GetMapActionGoal.Resolve(msg.action_goal);
    }
    else {
      resolved.action_goal = new GetMapActionGoal();
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = GetMapActionResult.Resolve(msg.action_result);
    }
    else {
      resolved.action_result = new GetMapActionResult();
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = GetMapActionFeedback.Resolve(msg.action_feedback);
    }
    else {
      resolved.action_feedback = new GetMapActionFeedback();
    }

    return resolved;
  }
}

module.exports = GetMapAction
