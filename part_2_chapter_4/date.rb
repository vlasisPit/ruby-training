#!/usr/bin/env ruby

=begin   
Date class is similar to Time class
May be easier to work woth dates than times, if we want to focus on the date
Date is not automatically loaded by Ruby
Need to add "require 'date'"
=end

require 'date'

puts Date.today
puts Date.today.month

test_date = Date.new(2018, 2, 1)
puts test_date

#Convert Date to Time
puts test_date.to_time

#Convert Time to Date
puts Time.now.to_date

puts test_date.leap? #leap year
puts test_date.next_year
puts test_date.next_month
puts test_date.prev_year
puts test_date.prev_month
puts test_date.next_year.next_year

puts test_date.gregorian?
puts test_date.julian?

test_date = Date.new(1989, 4, 20)
puts test_date.leap?
puts test_date.cweek
puts test_date.cwday
