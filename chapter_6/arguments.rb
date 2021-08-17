#!/usr/bin/env ruby

def volume(x, y, z)
    x*y*z
end

puts volume(2,3,4)
puts volume(5,7,8)

def volume_without_parenthesis x, y, z
    x*y*z
end

puts volume_without_parenthesis(2,3,4)
puts volume_without_parenthesis(5,7,8)
