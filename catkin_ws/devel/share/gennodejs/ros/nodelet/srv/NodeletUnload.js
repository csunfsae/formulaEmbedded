//-----------------------------------------------------------
// Auto-generated from package nodelet.
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

class NodeletUnloadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name;
      }
      else {
        this.name = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeletUnloadRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type NodeletUnloadRequest
    let data = new NodeletUnloadRequest(null);
    let len;
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    // 4 is precalculated sum of the constant length fields
    return length + 4;
  }

  static datatype() {
    // Returns string type for a nodelet/NodeletUnloadRequest object
    return 'nodelet/NodeletUnloadRequest';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeletUnloadRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = '';
    }

    return resolved;
  }
}

//-----------------------------------------------------------
class NodeletUnloadResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success;
      }
      else {
        this.success = false;
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeletUnloadResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type NodeletUnloadResponse
    let data = new NodeletUnloadResponse(null);
    let len;
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a nodelet/NodeletUnloadResponse object
    return 'nodelet/NodeletUnloadResponse';
  }

  static md5sum() {
    // Returns md5sum of message object
    return '358e233cde0c8a8bcfea4ce193f8fc15'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeletUnloadResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false;
    }

    return resolved;
  }
}

//-----------------------------------------------------------
module.exports = {
  Request: NodeletUnloadRequest,
  Response: NodeletUnloadResponse,
  md5sum() { return 'd08a3b641c2f8680fbdfb1ea2e17a3e1'; },
  datatype() { return 'nodelet/NodeletUnload'; }
};

