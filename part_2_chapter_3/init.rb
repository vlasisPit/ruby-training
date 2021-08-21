#!/usr/bin/env ruby

require('./classes/animal')
require('./classes/pig')
require('./classes/cow')
require('./classes/radio')
require('./classes/secure_radio')
require('./classes/chef')
require('./classes/amateur_chef')

puts Animal.total_animals
generic = Animal.new
puts generic.noise # empty

wilbur = Pig.new
puts wilbur.noise
puts wilbur.eat
puts Animal.total_animals

maisie = Cow.new
puts maisie.noise
puts maisie.jump
puts Animal.total_animals

chef = Chef.new
chef.make_dinner

chef = AmateurChef.new
chef.make_dinner

radio = Radio.fm({})
puts radio.status
radio.play
radio.play
radio.play

secure_radio = SecureRadio.fm({})
puts "--------"
puts secure_radio.class
puts secure_radio.status
puts secure_radio.play

puts ShiftCipher.decode('d wudiilf uhsruw', 3)
puts ShiftCipher.decode('Khuh frphv wkh vxq', 3)
puts ShiftCipher.decode("Olnh d Uroolqj' vwrqh", 3)

puts ShiftCipher.encode("uvwxy", 3)
puts ShiftCipher.decode("xyzab", 3)

puts ShiftCipher.encode("xyzabc", 3)
puts ShiftCipher.decode("abcdef", 3)

puts ShiftCipher.encode("Hello", 5)
puts ShiftCipher.decode("Mjqqt", 5)