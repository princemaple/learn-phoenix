var socket = new Phoenix.Socket('/socket', {
  logger: function(kind, msg, data) { console.log(`${kind}: ${msg}`, data); }
});

socket.connect();

socket.onOpen(function(event) { console.log("OPEN", event); });
socket.onError(function(event) { console.log("ERROR", event); });
socket.onClose(function(event) { console.log("CLOSE", event); });

var channel = socket.channel("tests:lobby", {});

channel.join().receive("ignore", function() { console.log("auth error"); })
           .receive("ok", function() { console.log("join ok"); });
channel.onError(function() { console.log("something went wrong", e); });
channel.onClose(function() { console.log("channel closed", e); });

setTimeout(function() {
  channel.push("new:msg", { a: 1, b: 2 });
}, 2000);
