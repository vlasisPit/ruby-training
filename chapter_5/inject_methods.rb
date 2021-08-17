#!/usr/bin/env ruby

=begin
    -inject / reduce
    Use an accumulator value (block variable for the accumulation)
    Ruby convention: memo
=end

# memo has not an initial value. It grabs the value of the first property in the array
puts (1..5).inject { |memo, n| memo + n}
puts [3,5,7].inject { |memo, n| memo * n}
puts [2,4,6].inject { |memo, n| memo ** n}

# Returns 0 as a result !!!
res = (1..5).inject do |memo, n|
    memo + n
    x = 0
end
puts res

# total number of characters with initial value inject(0)
fruits = ['apple', 'banana', 'pear', 'mango']
total_size = fruits.inject(0) do |memo, fruit|
    memo + fruit.length
end
puts total_size

# Find max length with memo
longest = fruits.inject do |memo, fruit| 
    if fruit.length > memo.length
        fruit
    else
        memo
    end
end
puts longest

# Accumulate first letters of each property in the array
first_char_acc = fruits.inject('') do |memo, fruit| 
    memo << fruit[0]
end
puts first_char_acc
