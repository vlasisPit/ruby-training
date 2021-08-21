#!/usr/bin/env ruby

=begin   
Modules are wrappers around Ruby code.
They are different from classes and they can not be instantiated
Use them for: namespacing and mixins

-namespacing
Prevent conflicts when code has similarly named classes and methods.

=end

require('./classes/date')
require 'date'

# This is not an instance of class Date I need. Should use modules inside class Date
dinner = Date.new   
puts dinner
puts dinner.year

dinner = MakeSparks::Date.new   
dinner.date = Date.today
puts dinner.date




