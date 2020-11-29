let localStream;
let remoteStream;
let roomId;
let roomIdData = [];
let peerConnection;

const freeice = require('freeice');

let configuration = {
    /*iceServers: [
      {urls: 'stun:stun.services.mozilla.com'},
      {urls: ['stun:stun.l.google.com:19302',
              'stun:stun1.l.google.com:19302',
              'stun:stun2.l.google.com:19302',
              'stun:stun3.l.google.com:19302',
              'stun:stun4.l.google.com:19302',]},
      {urls: 'stun:stun.ekiga.net'},
      {urls: 'stun:stun.ideasip.com'},
      {urls: 'stun:stun.rixtelecom.se'},
      {urls: 'stun:stun.schlund.de'},
      {urls: 'stun:stun.stunprotocol.org:3478'},
      {urls: 'stun:stun.voiparound.com'},
      {urls: 'stun:stun.voipbuster.com'},
      {urls: 'stun:stun.voipstunt.com'},
      {urls: 'stun:stun.voxgratia.org'},
    ],*/
    iceServers: freeice({stun: 2}),
    iceCandidatePoolSize: 10,
  }

//Reference to the Buttons
let openButton = document.getElementById("open");
let createButton = document.getElementById("create");
let joinButton = document.getElementById("join");
let hangupButton = document.getElementById("hangup");

createButton.disabled = true;
joinButton.disabled = true;
hangupButton.disabled = true;

// Reference to the Video Tags
let localVideo = document.getElementById("localVideo");
let remoteVideo = document.getElementById("remoteVideo");
