// Auto-generated. Do not edit!

// (in-package task.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class IoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_state = null;
    }
    else {
      if (initObj.hasOwnProperty('set_state')) {
        this.set_state = initObj.set_state
      }
      else {
        this.set_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IoRequest
    // Serialize message field [set_state]
    bufferOffset = _serializer.bool(obj.set_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IoRequest
    let len;
    let data = new IoRequest(null);
    // Deserialize message field [set_state]
    data.set_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task/IoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ca4c1ce228d4890d41f38bff165f1e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IoRequest(null);
    if (msg.set_state !== undefined) {
      resolved.set_state = msg.set_state;
    }
    else {
      resolved.set_state = false
    }

    return resolved;
    }
};

class IoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.now_state = null;
    }
    else {
      if (initObj.hasOwnProperty('now_state')) {
        this.now_state = initObj.now_state
      }
      else {
        this.now_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IoResponse
    // Serialize message field [now_state]
    bufferOffset = _serializer.bool(obj.now_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IoResponse
    let len;
    let data = new IoResponse(null);
    // Deserialize message field [now_state]
    data.now_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task/IoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5411d3955ab1f2c1ec1dc6ae762707f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool now_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IoResponse(null);
    if (msg.now_state !== undefined) {
      resolved.now_state = msg.now_state;
    }
    else {
      resolved.now_state = false
    }

    return resolved;
    }
};

module.exports = {
  Request: IoRequest,
  Response: IoResponse,
  md5sum() { return 'e485b43c04e16f65a9831427eefda836'; },
  datatype() { return 'task/Io'; }
};
