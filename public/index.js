let localStream;
let remoteStream;
let roomId;
let roomIdData = [];
let peerConnection;

let configuration = {
    'iceServers': [
      {'urls': 'stun:stun.services.mozilla.com'},
      {'urls': 'stun:stun.l.google.com:19302',
               'stun1.l.google.com:19302',
               'stun2.l.google.com:19302',
               'stun3.l.google.com:19302',
               'stun4.l.google.com:19302'},
      {'urls': 'stun.ekiga.net'},
      {'urls': 'stun.ideasip.com'},
      {'urls': 'stun.rixtelecom.se'},
      {'urls': 'stun.schlund.de'},
      {'urls': 'stun.stunprotocol.org:3478'},
      {'urls': 'stun.voiparound.com'},
      {'urls': 'stun.voipbuster.com'},
      {'urls': 'stun.voipstunt.com'},
      {'urls': 'stun.voxgratia.org'}
    ]
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
