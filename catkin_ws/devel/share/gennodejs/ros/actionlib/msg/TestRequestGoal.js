//-----------------------------------------------------------
// Auto-generated from package actionlib.
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

class TestRequestGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.terminate_status = null;
      this.ignore_cancel = null;
      this.result_text = null;
      this.the_result = null;
      this.is_simple_client = null;
      this.delay_accept = null;
      this.delay_terminate = null;
      this.pause_status = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('terminate_status')) {
        this.terminate_status = initObj.terminate_status;
      }
      else {
        this.terminate_status = 0;
      }

      if (initObj.hasOwnProperty('ignore_cancel')) {
        this.ignore_cancel = initObj.ignore_cancel;
      }
      else {
        this.ignore_cancel = false;
      }

      if (initObj.hasOwnProperty('result_text')) {
        this.result_text = initObj.result_text;
      }
      else {
        this.result_text = '';
      }

      if (initObj.hasOwnProperty('the_result')) {
        this.the_result = initObj.the_result;
      }
      else {
        this.the_result = 0;
      }

      if (initObj.hasOwnProperty('is_simple_client')) {
        this.is_simple_client = initObj.is_simple_client;
      }
      else {
        this.is_simple_client = false;
      }

      if (initObj.hasOwnProperty('delay_accept')) {
        this.delay_accept = initObj.delay_accept;
      }
      else {
        this.delay_accept = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('delay_terminate')) {
        this.delay_terminate = initObj.delay_terminate;
      }
      else {
        this.delay_terminate = {secs: 0, nsecs: 0};
      }

      if (initObj.hasOwnProperty('pause_status')) {
        this.pause_status = initObj.pause_status;
      }
      else {
        this.pause_status = {secs: 0, nsecs: 0};
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestRequestGoal
    // Serialize message field [terminate_status]
    bufferOffset = _serializer.int32(obj.terminate_status, buffer, bufferOffset);

    // Serialize message field [ignore_cancel]
    bufferOffset = _serializer.bool(obj.ignore_cancel, buffer, bufferOffset);

    // Serialize message field [result_text]
    bufferOffset = _serializer.string(obj.result_text, buffer, bufferOffset);

    // Serialize message field [the_result]
    bufferOffset = _serializer.int32(obj.the_result, buffer, bufferOffset);

    // Serialize message field [is_simple_client]
    bufferOffset = _serializer.bool(obj.is_simple_client, buffer, bufferOffset);

    // Serialize message field [delay_accept]
    bufferOffset = _serializer.duration(obj.delay_accept, buffer, bufferOffset);

    // Serialize message field [delay_terminate]
    bufferOffset = _serializer.duration(obj.delay_terminate, buffer, bufferOffset);

    // Serialize message field [pause_status]
    bufferOffset = _serializer.duration(obj.pause_status, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type TestRequestGoal
    let data = new TestRequestGoal(null);
    let len;
    // Deserialize message field [terminate_status]
    data.terminate_status = _deserializer.int32(buffer, bufferOffset);

    // Deserialize message field [ignore_cancel]
    data.ignore_cancel = _deserializer.bool(buffer, bufferOffset);

    // Deserialize message field [result_text]
    data.result_text = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [the_result]
    data.the_result = _deserializer.int32(buffer, bufferOffset);

    // Deserialize message field [is_simple_client]
    data.is_simple_client = _deserializer.bool(buffer, bufferOffset);

    // Deserialize message field [delay_accept]
    data.delay_accept = _deserializer.duration(buffer, bufferOffset);

    // Deserialize message field [delay_terminate]
    data.delay_terminate = _deserializer.duration(buffer, bufferOffset);

    // Deserialize message field [pause_status]
    data.pause_status = _deserializer.duration(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result_text);
    // 38 is precalculated sum of the constant length fields
    return length + 38;
  }

  static datatype() {
    // Returns string type for a actionlib/TestRequestGoal object
    return 'actionlib/TestRequestGoal';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'db5d00ba98302d6c6dd3737e9a03ceea'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int32 TERMINATE_SUCCESS = 0
int32 TERMINATE_ABORTED = 1
int32 TERMINATE_REJECTED = 2
int32 TERMINATE_LOSE = 3
int32 TERMINATE_DROP = 4
int32 TERMINATE_EXCEPTION = 5
int32 terminate_status
bool ignore_cancel  # If true, ignores requests to cancel
string result_text
int32 the_result    # Desired value for the_result in the Result
bool is_simple_client
duration delay_accept  # Delays accepting the goal by this amount of time
duration delay_terminate  # Delays terminating for this amount of time
duration pause_status  # Pauses the status messages for this amount of time
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestRequestGoal(null);
    if (msg.terminate_status !== undefined) {
      resolved.terminate_status = msg.terminate_status;
    }
    else {
      resolved.terminate_status = 0;
    }

    if (msg.ignore_cancel !== undefined) {
      resolved.ignore_cancel = msg.ignore_cancel;
    }
    else {
      resolved.ignore_cancel = false;
    }

    if (msg.result_text !== undefined) {
      resolved.result_text = msg.result_text;
    }
    else {
      resolved.result_text = '';
    }

    if (msg.the_result !== undefined) {
      resolved.the_result = msg.the_result;
    }
    else {
      resolved.the_result = 0;
    }

    if (msg.is_simple_client !== undefined) {
      resolved.is_simple_client = msg.is_simple_client;
    }
    else {
      resolved.is_simple_client = false;
    }

    if (msg.delay_accept !== undefined) {
      resolved.delay_accept = msg.delay_accept;
    }
    else {
      resolved.delay_accept = {secs: 0, nsecs: 0};
    }

    if (msg.delay_terminate !== undefined) {
      resolved.delay_terminate = msg.delay_terminate;
    }
    else {
      resolved.delay_terminate = {secs: 0, nsecs: 0};
    }

    if (msg.pause_status !== undefined) {
      resolved.pause_status = msg.pause_status;
    }
    else {
      resolved.pause_status = {secs: 0, nsecs: 0};
    }

    return resolved;
  }
}

// Constants for message
TestRequestGoal.Constants = {
  TERMINATE_SUCCESS: 0,
  TERMINATE_ABORTED: 1,
  TERMINATE_REJECTED: 2,
  TERMINATE_LOSE: 3,
  TERMINATE_DROP: 4,
  TERMINATE_EXCEPTION: 5,
}

module.exports = TestRequestGoal
