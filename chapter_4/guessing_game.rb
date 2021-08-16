#!/usr/bin/env ruby

puts "What is your name" 
name = gets.chomp 
puts "Hello, #{name} !" 

puts "Choose a random number between 1 and 10"
random_num = rand(10)
puts "Ok, I have my number. Please choose"

guess_is_correct = false
1.upto(3) do |i| 
    puts "Guess #{i} : "
    number = gets.chomp 
    if number.to_i == random_num
        puts "Correct !!!"
        guess_is_correct = true
        break
    else
        puts "Try again"
    end 
end

unless guess_is_correct
    puts "This was your last guess"
    puts "The number was #{random_num}"
end
