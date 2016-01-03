var socket = new Phoenix.Socket('/socket', {});

socket.connect();

socket.onOpen(function(event) { console.log("OPEN", event); });
socket.onError(function(event) { console.log("ERROR", event); });
socket.onClose(function(event) { console.log("CLOSE", event); });

var channel = socket.channel("tests:lobby", {});

channel.join().receive("ok", function() {
  channel.push('shout', { msg: 'omgomgomgomg' + (new Date) });
  channel.push('msg:new', { a: 1, b: 2 });
});
channel.onError(function(event) { console.log("something went wrong", event); });
channel.onClose(function(event) { console.log("channel closed", event); });
