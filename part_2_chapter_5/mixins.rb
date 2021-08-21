#!/usr/bin/env ruby

=begin   
Modules are wrappers around Ruby code.
They are different from classes and they can not be instantiated
Use them for: namespacing and mixins

-mixins
Ruby only allows subclasses to inherit from one superclass.
Modules allow us to package up shared functionality and can be mixed into a class (mixins)

Use "class inheritance" when a class needs to modify or extend the behaviour of another class.
Use "MIXINS" when several classes need to utilize a single set of behaviors
=end

require('./classes/person') 
require('./modules/nameable') 

person = Person.new
person.first_name = "Vlasis"
person.last_name = "Pitsios"
puts person.full_name
puts person.initial_and_last_name
