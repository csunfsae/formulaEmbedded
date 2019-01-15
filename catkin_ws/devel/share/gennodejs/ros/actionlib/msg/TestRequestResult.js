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

class TestRequestResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.the_result = null;
      this.is_simple_server = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('the_result')) {
        this.the_result = initObj.the_result;
      }
      else {
        this.the_result = 0;
      }

      if (initObj.hasOwnProperty('is_simple_server')) {
        this.is_simple_server = initObj.is_simple_server;
      }
      else {
        this.is_simple_server = false;
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestRequestResult
    // Serialize message field [the_result]
    bufferOffset = _serializer.int32(obj.the_result, buffer, bufferOffset);

    // Serialize message field [is_simple_server]
    bufferOffset = _serializer.bool(obj.is_simple_server, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type TestRequestResult
    let data = new TestRequestResult(null);
    let len;
    // Deserialize message field [the_result]
    data.the_result = _deserializer.int32(buffer, bufferOffset);

    // Deserialize message field [is_simple_server]
    data.is_simple_server = _deserializer.bool(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a actionlib/TestRequestResult object
    return 'actionlib/TestRequestResult';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '61c2364524499c7c5017e2f3fce7ba06'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
int32 the_result
bool is_simple_server
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestRequestResult(null);
    if (msg.the_result !== undefined) {
      resolved.the_result = msg.the_result;
    }
    else {
      resolved.the_result = 0;
    }

    if (msg.is_simple_server !== undefined) {
      resolved.is_simple_server = msg.is_simple_server;
    }
    else {
      resolved.is_simple_server = false;
    }

    return resolved;
  }
}

module.exports = TestRequestResult
