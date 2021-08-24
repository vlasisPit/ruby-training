#!/usr/bin/env ruby

require_relative './classes/no_even_numbers'

def even_numbers(array)
  unless array.is_a?(Array)
    raise ArgumentError
  end

  if array.length == 0
    raise StandardError.new("Too few elements")
  end

  even_array = array.find_all { |el| el.to_i % 2 == 0 }

  if even_array.length == 0
    raise NoEvenNumbers.new(array)
  end

  even_array
end

puts even_numbers([1, 2, 3, 4, 5]).join(',')
#puts even_numbers(1..6).join(',')
#puts even_numbers([]).join(',')

begin
  puts even_numbers([1, 3, 5, 7]).join(',')
rescue => e
  puts "#{e.class}: #{e.message}"
  puts "The array provided was [#{e.array.join(',')}]"
end
