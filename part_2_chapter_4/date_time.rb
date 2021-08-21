#!/usr/bin/env ruby

=begin   
DateTime is not automatically loaded from Ruby. You need to use require
Subclass of Date class extended with attributes and methods about time
The library is called 'date'

Time is the most useful class.
Date and DateTime add some additional functionality
=end

require 'date'

puts DateTime.now
puts DateTime.new(2016,10,1,2,45,0,'+3')
puts DateTime.now.to_time
puts Time.now.to_datetime
puts DateTime.now.to_time.class
puts Time.now.to_datetime.class