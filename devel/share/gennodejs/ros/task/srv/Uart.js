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

class UartRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.send = null;
    }
    else {
      if (initObj.hasOwnProperty('send')) {
        this.send = initObj.send
      }
      else {
        this.send = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UartRequest
    // Serialize message field [send]
    bufferOffset = _serializer.string(obj.send, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UartRequest
    let len;
    let data = new UartRequest(null);
    // Deserialize message field [send]
    data.send = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.send);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task/UartRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b903a44705b40a7116d3d10341f60dfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string send
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UartRequest(null);
    if (msg.send !== undefined) {
      resolved.send = msg.send;
    }
    else {
      resolved.send = ''
    }

    return resolved;
    }
};

class UartResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sendmsg = null;
    }
    else {
      if (initObj.hasOwnProperty('sendmsg')) {
        this.sendmsg = initObj.sendmsg
      }
      else {
        this.sendmsg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UartResponse
    // Serialize message field [sendmsg]
    bufferOffset = _serializer.string(obj.sendmsg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UartResponse
    let len;
    let data = new UartResponse(null);
    // Deserialize message field [sendmsg]
    data.sendmsg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sendmsg);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'task/UartResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb965b9e1233f78a793fd9c6682a7c68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sendmsg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UartResponse(null);
    if (msg.sendmsg !== undefined) {
      resolved.sendmsg = msg.sendmsg;
    }
    else {
      resolved.sendmsg = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: UartRequest,
  Response: UartResponse,
  md5sum() { return '947ef8842683fa73741f136ee7bdbba9'; },
  datatype() { return 'task/Uart'; }
};
