#!/usr/bin/env ruby

require 'date'

days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']

puts '-'*32
puts 'Birthdate Anlyasis !!!!!!!!!!!!!'
puts '-'*32

puts 'What year were you born?'
year = gets.chomp

puts 'What month were you born (number)?'
month = gets.chomp

puts 'What date of themonth were you born?'
day = gets.chomp

#input is a string
date = Date.new(year.to_i, month.to_i, day.to_i)

puts '-'*32
puts "You were born on a #{days[date.wday]}"
puts "It was the #{date.cweek} week of the year"
puts "It was the #{date.yday} day of the year"
puts "You were born on a #{date.leap? ? 'leap' : 'non-leap'} year"
puts '-'*32


