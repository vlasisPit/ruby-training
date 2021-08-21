#!/usr/bin/env ruby

require './classes/person'
require './classes/animal'
require './classes/animal2'
require './classes/radio'

test = "pasta"
puts test

# new String instance
empty_string = String.new
puts empty_string

# new Array instance
array = Array.new
puts array

person1 = Person.new
person2 = Person.new

puts person1.object_id
puts person2.object_id
puts person1.say_hello

pig = Animal.new
pig.noise = "Oink!" # syntactic sugar. Because of writer method on class
puts pig.noise      #calls a method

pig2 = Animal2.new
pig2.noise = "Oink!" # syntactic sugar. Because of writer method on class
puts pig2.noise      #calls a method

radio = Radio.new
radio.crank_it_up
puts radio.volume_status
radio.volume = 7
puts radio.volume_status
puts radio.volume

person = Person.new
person.first_name = "Bob"
person.last_name = "Smith"
puts person.full_name
puts person.initial_and_last_name
# puts person.get_initial("Lucy") # private. Cannot work!!!

dog = Animal.new({noise: 'Bark !!!'})
puts dog.noise



