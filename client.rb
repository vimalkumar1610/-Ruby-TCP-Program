# TCP client code
require 'socket'

host = 'localhost'
port = 1234

# Connect to server
client = TCPSocket.new(host, port)
puts "Connected to server on #{host}:#{port}"

# Send data to server
client.puts "Hello, server!"

# Read response from server
response = client.recv(1024)
puts "Server response: #{response}"

# Close the connection
client.close
