require "socket"
require "bson"
begin
	s = TCPSocket.open("localhost", 25600)
	gets
	
	while 1
	h={"toto" => "tata"}
	b=BSON.serialize h
	puts "BSON size "+b.size.to_s
	s.puts b
		if gets.to_i
		  puts s.gets
		end

	end
ensure

s.close
end