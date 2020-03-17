require "socket"

server = TCPServer.new("localhost", 3001)

loop do 
  client = server.accept

  request_line = client.gets
  next if !request_line || request_line =~ /favicon/
  puts request_line

  "GET /?rolls=2&sides=6 HTTP/1.1"
  client.puts "HTTP/1.1 200 OK\r\n\r\n"
  client.puts request_line
  client.puts "Content-Type: text/plain\r\n\r\n"
  client.puts rand(6) + 1
  client.close
  
end