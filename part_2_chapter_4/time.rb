#!/usr/bin/env ruby

now = Time.now
puts now
puts now.to_i #Unix time. How it is stored internally

#Time.new(year, month, day, hour, min, sec, utc_offset)
date = Time.new(2018, 10, 31, 2, 2, 2, "+02:00")
puts date

# add number of seconds (find tomorrow)
tomorrow = now + (60*60*24)
puts tomorrow

next_week = now + (60*60*24*7)
puts next_week

next_year = now + (60*60*24*365)
puts next_year

# substraction the same way
yesterday = now - (60*60*24)
puts yesterday

last_week = now - (60*60*24*7)
puts last_week

last_year = now - (60*60*24*365)
puts last_year

puts date.year
puts date.sec
puts date.yday # day of the year
puts date.wday # day of the week
puts date.sunday?

puts now.zone
puts now.utc?

