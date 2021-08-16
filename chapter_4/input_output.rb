#!/usr/bin/env ruby

=begin
output !!!!
puts => prints with a line return
print => prints without line return
=end

puts "Hello"
print "Hello\n"

# Input . using gets. The line return is included in gets
response = gets 
puts "Hello, #{response} !" 

# gets includes line return. For that case you should use chop or chomp
response = gets.chomp
puts "Hello, #{response} !"