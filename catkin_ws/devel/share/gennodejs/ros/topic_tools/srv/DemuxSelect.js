//-----------------------------------------------------------
// Auto-generated from package topic_tools.
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

class DemuxSelectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.topic = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic;
      }
      else {
        this.topic = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemuxSelectRequest
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type DemuxSelectRequest
    let data = new DemuxSelectRequest(null);
    let len;
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.topic);
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a topic_tools/DemuxSelectRequest object
    return 'topic_tools/DemuxSelectRequest';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'd8f94bae31b356b24d0427f80426d0c3'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string topic
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DemuxSelectRequest(null);
    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = '';
    }

    return resolved;
  }
}

//-----------------------------------------------------------
class DemuxSelectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prev_topic = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('prev_topic')) {
        this.prev_topic = initObj.prev_topic;
      }
      else {
        this.prev_topic = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DemuxSelectResponse
    // Serialize message field [prev_topic]
    bufferOffset = _serializer.string(obj.prev_topic, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type DemuxSelectResponse
    let data = new DemuxSelectResponse(null);
    let len;
    // Deserialize message field [prev_topic]
    data.prev_topic = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.prev_topic);
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a topic_tools/DemuxSelectResponse object
    return 'topic_tools/DemuxSelectResponse';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '3db0a473debdbafea387c9e49358c320'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string prev_topic
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DemuxSelectResponse(null);
    if (msg.prev_topic !== undefined) {
      resolved.prev_topic = msg.prev_topic;
    }
    else {
      resolved.prev_topic = '';
    }

    return resolved;
  }
}

//-----------------------------------------------------------
module.exports = {
  Request: DemuxSelectRequest,
  Response: DemuxSelectResponse,
  md5sum() { return '053052240ca985e1f2eedbb0dae9b1f7'; },
  datatype() { return 'topic_tools/DemuxSelect'; }
};

