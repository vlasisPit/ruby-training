#!/usr/bin/env ruby

=begin
    Inform Unix to run this script with ruby if Unix does not know the appropriate way
    to run the program. The shebang line at the top
=end

=begin
    To stop a Ruby program use:
    -exit, exit!
    -abort( msg )
    -Type cntrl+c
=end

fruits = ['banana', 'apple', 'pear']

fruits.each do |fruit| 
    if fruit == 'apple'
        #break   #exit from loop
        #exit #exit the entire script
        #exit!
        abort("exit on apple")
    end
    puts fruit.capitalize
end
puts "Total fruits: #{fruits.count}"