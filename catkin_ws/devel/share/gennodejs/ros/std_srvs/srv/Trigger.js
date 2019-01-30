//-----------------------------------------------------------
// Auto-generated from package std_srvs.
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


//-----------------------------------------------------------

class TriggerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TriggerRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type TriggerRequest
    let data = new TriggerRequest(null);
    let len;
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a std_srvs/TriggerRequest object
    return 'std_srvs/TriggerRequest';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'd41d8cd98f00b204e9800998ecf8427e'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TriggerRequest(null);
    return resolved;
  }
}

//-----------------------------------------------------------
class TriggerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success;
      }
      else {
        this.success = false;
      }

      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message;
      }
      else {
        this.message = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TriggerResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);

    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type TriggerResponse
    let data = new TriggerResponse(null);
    let len;
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);

    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    // 5 is precalculated sum of the constant length fields
    return length + 5;
  }

  static datatype() {
    // Returns string type for a std_srvs/TriggerResponse object
    return 'std_srvs/TriggerResponse';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '937c9679a518e3a18d831e57125ea522'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TriggerResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false;
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = '';
    }

    return resolved;
  }
}

//-----------------------------------------------------------
module.exports = {
  Request: TriggerRequest,
  Response: TriggerResponse,
  md5sum() { return '937c9679a518e3a18d831e57125ea522'; },
  datatype() { return 'std_srvs/Trigger'; }
};

