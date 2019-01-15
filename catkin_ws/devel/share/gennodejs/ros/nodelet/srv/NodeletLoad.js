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

class NodeletLoadRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.remap_source_args = null;
      this.remap_target_args = null;
      this.my_argv = null;
      this.bond_id = null;
    }
    else {
      // check for this message's fields by key name - otherwise assign default values
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name;
      }
      else {
        this.name = '';
      }

      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type;
      }
      else {
        this.type = '';
      }

      if (initObj.hasOwnProperty('remap_source_args')) {
        this.remap_source_args = initObj.remap_source_args;
      }
      else {
        this.remap_source_args = [];
      }

      if (initObj.hasOwnProperty('remap_target_args')) {
        this.remap_target_args = initObj.remap_target_args;
      }
      else {
        this.remap_target_args = [];
      }

      if (initObj.hasOwnProperty('my_argv')) {
        this.my_argv = initObj.my_argv;
      }
      else {
        this.my_argv = [];
      }

      if (initObj.hasOwnProperty('bond_id')) {
        this.bond_id = initObj.bond_id;
      }
      else {
        this.bond_id = '';
      }

    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeletLoadRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);

    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);


    // Serialize message field [remap_source_args]
    bufferOffset = _arraySerializer.string(obj.remap_source_args, buffer, bufferOffset, null);


    // Serialize message field [remap_target_args]
    bufferOffset = _arraySerializer.string(obj.remap_target_args, buffer, bufferOffset, null);


    // Serialize message field [my_argv]
    bufferOffset = _arraySerializer.string(obj.my_argv, buffer, bufferOffset, null);

    // Serialize message field [bond_id]
    bufferOffset = _serializer.string(obj.bond_id, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type NodeletLoadRequest
    let data = new NodeletLoadRequest(null);
    let len;
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);

    // Deserialize message field [remap_source_args]
    data.remap_source_args = _arrayDeserializer.string(buffer, bufferOffset, null);

    // Deserialize message field [remap_target_args]
    data.remap_target_args = _arrayDeserializer.string(buffer, bufferOffset, null);

    // Deserialize message field [my_argv]
    data.my_argv = _arrayDeserializer.string(buffer, bufferOffset, null);

    // Deserialize message field [bond_id]
    data.bond_id = _deserializer.string(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.type);
    for(let i = 0; i < object.remap_source_args.length; ++i) {
      length += 4 + _getByteLength(object.remap_source_args[i]);
    }
    for(let i = 0; i < object.remap_target_args.length; ++i) {
      length += 4 + _getByteLength(object.remap_target_args[i]);
    }
    for(let i = 0; i < object.my_argv.length; ++i) {
      length += 4 + _getByteLength(object.my_argv[i]);
    }
    length += _getByteLength(object.bond_id);
    // 24 is precalculated sum of the constant length fields
    return length + 24;
  }

  static datatype() {
    // Returns string type for a nodelet/NodeletLoadRequest object
    return 'nodelet/NodeletLoadRequest';
  }

  static md5sum() {
    // Returns md5sum of message object
    return 'c6e28cc4d2e259249d96cfb50658fbec'
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
string type
string[] remap_source_args
string[] remap_target_args
string[] my_argv

string bond_id
`;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeletLoadRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = '';
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = '';
    }

    if (msg.remap_source_args !== undefined) {
      resolved.remap_source_args = msg.remap_source_args;
    }
    else {
      resolved.remap_source_args = [];
    }

    if (msg.remap_target_args !== undefined) {
      resolved.remap_target_args = msg.remap_target_args;
    }
    else {
      resolved.remap_target_args = [];
    }

    if (msg.my_argv !== undefined) {
      resolved.my_argv = msg.my_argv;
    }
    else {
      resolved.my_argv = [];
    }

    if (msg.bond_id !== undefined) {
      resolved.bond_id = msg.bond_id;
    }
    else {
      resolved.bond_id = '';
    }

    return resolved;
  }
}

//-----------------------------------------------------------
class NodeletLoadResponse {
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
    // Serializes a message object of type NodeletLoadResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);

    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    // Deserializes a message object of type NodeletLoadResponse
    let data = new NodeletLoadResponse(null);
    let len;
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);

    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a nodelet/NodeletLoadResponse object
    return 'nodelet/NodeletLoadResponse';
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
    const resolved = new NodeletLoadResponse(null);
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
  Request: NodeletLoadRequest,
  Response: NodeletLoadResponse,
  md5sum() { return '8cfbf33bf3fbd4c54a833f6e2b105331'; },
  datatype() { return 'nodelet/NodeletLoad'; }
};

