#!/usr/bin/env ruby

require './classes/product'
require './classes/animal'
require './classes/radio'

ring = Product.exclusive
puts sprintf('$%.2f', ring.price)   #format the string

Animal.species.each do |type|
    puts type
end

wilbur = Animal.create_a_pig
puts wilbur.noise
puts wilbur.color

winy = Animal.new({noise: 'Woo!', color: 'brown'})

puts "--------"
puts Animal.total_animals
Animal.current_animals.each {|animal| puts animal.color}

Animal.species = ['cat', 'mouse', 'moose']
Animal.species.each do |type|
    puts type
end

radio = Radio.new({volume: 2, freq: 90.0, band: 'FM'})
puts radio.volume
puts radio.freq
puts radio.band

radio = Radio.new({volume: 2, freq: 1090.0, band: 'FM'})
puts radio.status

radio = Radio.new({volume: 2, freq: 1090.0, band: 'AM'})
puts radio.status

radio = Radio.new({volume: 2, freq: 3090.0, band: 'AM'})
puts radio.status

radio_fm = Radio.fm({volume: 2, freq: 3090.0})
puts radio_fm.status

radio_fm = Radio.fm({volume: 5, freq: 95.2})
puts radio_fm.status

radio_am = Radio.am({volume: 7, freq: 700.0})
puts radio_am.status
radio_am.frequency(800.0)
puts radio_am.status
puts radio_am.band
