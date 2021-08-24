#!/usr/bin/env ruby

=begin
NEVER CATCH Exception class !!!!!!!!!!!!!
We want Ruby to handle this in his own way
It is too broad
=end

# rescue any exception !!!
def divide(x, y)
  x / y
rescue
  puts "Exception raised, but handled (2)"
end

def divide_without_rescue(x, y)
  x / y
end

def divide_catch_specific_exception(x, y)
  x / y
rescue ZeroDivisionError
  puts "ZeroDivisionError handled"
rescue TypeError, ArgumentError # You can handle two error types
  puts "TypeError handled"
rescue #default for rescue is StandardError. So it catches StandardError and every sub-class
  puts "Some other StandardError handled"
end

# rescue any exception !!!
begin
  # Exceptional event
  1 / 0
rescue
  puts "Exception raised, but handled"
end

divide(5, 0)

# rescue any exception !!!
begin
  divide_without_rescue(5, 0)
rescue
  puts "Exception raised, but handled (3)"
end

divide_catch_specific_exception(4, 0)
divide_catch_specific_exception(4, "2") #TypeError

begin
  divide_catch_specific_exception(4)
rescue ArgumentError
  puts "Requires two arguments"
end

begin
  1 / 0
rescue ZeroDivisionError => e
  puts "#{e.class} handled"
rescue => e
  puts "#{e.class} handled"
end

=begin
Exception#class
Exception#message
Exception#backtrace  -> returns path of the code
Exception#ful_message -> combines class, message and backtrace
=end
