#!/usr/bin/env ruby

require './classes/dice_set'
require './classes/die'

puts '--------------------------'
puts 'Welcome to the Dice roller'
puts '--------------------------'
dice_set = DiceSet.new
puts "DiceSet created"
puts dice_set.display

puts 'Type \'r\' to roll again and \'q\' to quit'
loop do
    input_char = gets.chomp 
    if input_char=='r'
        dice_set.roll
        puts dice_set.display
    elsif input_char == 'q'
        break       
    else
        puts 'Type \'r\' to roll again and \'q\' to quit'
        next        
    end
end