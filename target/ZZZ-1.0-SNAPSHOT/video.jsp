<%-- 
    Document   : vedio
    Created on : Apr 21, 2025, 12:03:44 AM
    Author     : sumitkumarsoni
--%>
<%
  if (session.getAttribute("name")==null){
	  response.sendRedirect("index.jsp");
  }
  %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Video Conferencing Call</title>
  <!-- Tailwind CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100">
  <div class="container mx-auto p-4">
    <h1 class="text-2xl font-bold mb-4 text-center">Video Conferencing Call</h1>
    <div class="flex justify-center space-x-4">
      <!-- Local Video -->
      <video id="localVideo" class="w-1/2 bg-black rounded shadow" autoplay  ></video>
      <!-- Remote Video -->
      <video id="remoteVideo" class="w-1/2 bg-black rounded shadow" autoplay></video>
    </div>
    <div class="mt-4 flex justify-center space-x-4">
      <button id="startButton" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
        Start Video
      </button>
      <button id="callButton" class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded">
        Call
      </button>
      <button id="hangupButton" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">
        Hang Up
      </button>
    </div>
  </div>

  <script>
    // Replace with your actual WebSocket endpoint URL (adjust port/app name as needed)
    const socket = new WebSocket("ws://localhost:8080/YourAppName/video");

    socket.onopen = function() {
      console.log("WebSocket connection opened.");
    };

    socket.onmessage = function(event) {
      console.log("Signal received: ", event.data);
      const message = JSON.parse(event.data);

      // Handling different types of signaling messages.
      if (message.type === "offer") {
        peerConnection.setRemoteDescription(new RTCSessionDescription(message));
        peerConnection.createAnswer().then(answer => {
          peerConnection.setLocalDescription(answer);
          socket.send(JSON.stringify(answer));
        });
      } else if (message.type === "answer") {
        peerConnection.setRemoteDescription(new RTCSessionDescription(message));
      } else if (message.type === "candidate") {
        const candidate = new RTCIceCandidate(message.candidate);
        peerConnection.addIceCandidate(candidate);
      }
    };

    // WebRTC variables
    let localStream;
    let peerConnection;
    const configuration = { iceServers: [{ urls: "stun:stun.l.google.com:19302" }] };

    // DOM elements
    const localVideo = document.getElementById("localVideo");
    const remoteVideo = document.getElementById("remoteVideo");
    const startButton = document.getElementById("startButton");
    const callButton = document.getElementById("callButton");
    const hangupButton = document.getElementById("hangupButton");

    // Start local video stream
    startButton.addEventListener("click", async () => {
      try {
        localStream = await navigator.mediaDevices.getUserMedia({ video: true, audio: true });
        localVideo.srcObject = localStream;
      } catch (error) {
        console.error("Error accessing media devices:", error);
      }
    });

    // Create the RTCPeerConnection and handle signaling (offer/answer and ICE candidates)
    callButton.addEventListener("click", () => {
      peerConnection = new RTCPeerConnection(configuration);

      // Add local tracks to peer connection
      localStream.getTracks().forEach(track => {
        peerConnection.addTrack(track, localStream);
      });

      // When remote stream arrives, set it to the remote video element
      peerConnection.ontrack = event => {
        remoteVideo.srcObject = event.streams[0];
      };

      // Exchange ICE candidates
      peerConnection.onicecandidate = event => {
        if (event.candidate) {
          socket.send(JSON.stringify({
            type: "candidate",
            candidate: event.candidate
          }));
        }
      };

      // Create and send an offer to start the connection
      peerConnection.createOffer().then(offer => {
        peerConnection.setLocalDescription(offer);
        socket.send(JSON.stringify(offer));
      });
    });

    // Hang up the call
    hangupButton.addEventListener("click", () => {
      if (peerConnection) {
        peerConnection.close();
        peerConnection = null;
      }
    });
    hangupButton.addEventListener("click", () => {
  if (peerConnection) {
    peerConnection.close();
    peerConnection = null;
    console.log("Peer connection closed.");
  }
  
  // अगर localStream मौजूद है, तो उसके सारे ट्रैक्स को स्टॉप कर दें
  if (localStream) {
    localStream.getTracks().forEach(track => {
      track.stop();
    });
    localStream = null;
    localVideo.srcObject = null;
    console.log("Local media stream stopped.");
  }
  
  // Remote video को भी खाली कर दें
  remoteVideo.srcObject = null;
  console.log("Remote video cleared.");
});
  </script>
  
  
  
</body>
</html>
