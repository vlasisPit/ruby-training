#!/usr/bin/env ruby

=begin
    -map /collect (map and collect are synonyms !!!!!)
    Iterate through an enumerable and execute a code block on each item
    Adds the result on a new array

    -map! / collect!
    More powerful or destructive version of a method.
    Replaces the contents of the initial enumerable
=end

x = [1,2,3,4,5]
y = x.map {|n| n + 1}
puts x.to_s
puts y.to_s

y = x.collect{|n| n * 50}
puts x.to_s
puts y.to_s

# map always return an array !!!!!!!!! Even if the input is a hash
# If you want to keep the hash, you need to use each
scores = {low: 2, high: 8, avg: 6}
adjusted_scores = scores.map do |k, v|
    "#{k.capitalize} : #{v * 100}"
end
puts adjusted_scores.to_s

# map with if (returns nil in non-verified with if cases)
fruits = ['apple', 'banana', 'pear']
capitalized_fruits = fruits.map do |fruit|
    if fruit == 'pear'
        fruit.capitalize
    end
end
puts capitalized_fruits.to_s

# Else you need to have the else statement 
capitalized_fruits = fruits.map do |fruit|
    if fruit == 'pear'
        fruit.capitalize
    else
        fruit
    end
end
puts capitalized_fruits.to_s

# Use puts inside a block in a map. Returned array will have nil values
cap_fruits = fruits.map do |fruit|
    puts fruit.capitalize
end
puts cap_fruits.to_s

# modify the original array using !
fruits.map! do |fruit|
    fruit.capitalize
end
puts fruits.to_s

