#!/usr/bin/env ruby

=begin
    We need to make comparisons to sort
    <=> spaceship operator
    value1 <=> value2

    Results
    -1 => less than
    0  => equal
    1  => more than

    When sorting
    -1 => less than => "moves left"
    0  => equal     => "stays"
    1  => more than => "moves right"

    -sort / sort_by
    -sort! / sort_by!
=end

puts 1 <=> 2
puts 2 <=> 1
puts 2 <=> 2

array = [5,8,2,6,1,3]
x = array.sort {|v1,v2| v1 <=> v2}
puts x.to_s

# reverse order
x = array.sort {|v1,v2| v2 <=> v1}
puts x.to_s

fruits = ['pear', 'apple', 'banana']
x = fruits.sort
puts x.to_s

#custom sort order
x = fruits.sort do |fruit1, fruit2|
    fruit1.length <=> fruit2.length
end
puts x.to_s

# or on one line. But sort is faster than sort_by
x = fruits.sort_by {|fruit| fruit.length}
puts x.to_s

# custom ordering
x = fruits.sort do |fruit1, fruit2|
    case fruit1
    when 'apple'; 1
    when 'banana'; -1
    when 'pear'; 0
    end
end
puts x.to_s

# sort!
array_test = [5,8,2,6,1,3]
puts array_test.to_s
array_test.sort! {|v1,v2| v1 <=> v2}
puts array_test.to_s

# if you sort a hash, you take back an array because hash is unordered
# First it converts it to an array and then it sorts it
hash = {a: 4, c: 5, b: 3}
x = hash.sort {|p1, p2| p1[0] <=> p2[0]} # sort by key
puts x.to_s
x = hash.sort {|p1, p2| p1[1] <=> p2[1]} # sort by value
puts x.to_s


