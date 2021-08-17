#!/usr/bin/env ruby

=begin     
    Methods can ONLY return one value
    Use an array or hash to return multiple values
=end

def add_and_subtract_array(n1, n2)
    add = n1 + n2
    sub = n1 - n2
    [add, sub]
end

def add_and_subtract_hash(n1, n2)
    add = n1 + n2
    sub = n1 - n2
    {:add => add, :sub => sub}
end

result = add_and_subtract_array(8,3)
puts result[0]
puts result[1]

result_hash = add_and_subtract_hash(8,3)
puts result_hash[:add]
puts result_hash[:sub]

# multiple assignment using comma-separated variables. a and s are assigned to the first 
#two elements of the array
a,s = add_and_subtract_array(8,3)
puts a
puts s







