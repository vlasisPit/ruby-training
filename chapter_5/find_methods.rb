#!/usr/bin/env ruby

=begin
    -find/detect
    -find_all/select
    -any?  /  none?
    -all?  /  one?   
    -delete_if
=end

num = (1..10).find {|n| n == 5}
puts num

# Find the FIRST number in the set which is divisible by 3
puts (1..10).find {|n| n % 3 == 0}

# Find all same as select. Returns an array
puts (1..10).find_all {|n| n % 3 == 0}
puts (1..10).select {|n| n % 3 == 0}

# Exact same thing with detect
puts (1..10).detect {|n| n % 3 == 0}

# FIRST object with length more than 5
fruits = ['apple', 'banana', 'pear']
puts fruits.find {|fruit| fruit.length > 5}

pantry = {'apple' => 0, 'banana' => 1, 'pear' => 3}
puts pantry.find {|k,v| v == 0 }    # returns an array
puts pantry.find {|k,v| v == 0 }.to_s

puts pantry.select {|k,v| v == 0 } #synonym to find_all

# returns boolean if exists any
puts (1..10).any? {|n| n <= 5}

puts (1..10).none? {|n| n <= 5}

# all items in the set match the condition ??
puts (1..10).all? {|n| n <= 5}

# EXACTLY one match the condition
puts (1..10).one? {|n| n <= 5}
puts (1..10).one? {|n| n == 5}

# creates an array and delete less than 5
numbers = [*1..10]
numbers.delete_if {|n| n <= 5}
puts numbers.to_s

# find even numbers
numbers = [*1..10]
numbers.delete_if{|n| n % 2 == 1}
puts numbers.to_s






