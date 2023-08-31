# TCP server code
require 'socket'

server = TCPServer.new(1234) # Start server on port 1234
puts "Server started on port 1234"

loop do
  client = server.accept    # Wait for a client to connect
  puts "Client connected from #{client.peeraddr[2]}:#{client.peeraddr[1]}"
  
  # Read data from client
  data = client.recv(1024)
  puts "Received data: #{data}"
  
  # Send response back to client
  client.puts "Message received: #{data}"
  
  # Close the connection
  client.close
end
