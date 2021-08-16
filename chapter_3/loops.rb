# loop
i = 5
loop do
    break if i <= 0
    puts "Countdown: #{i}"
    i -= 1
end
puts "Blast off!!"

# while
i = 5
while i > 0
    puts "Countdown: #{i}"
    i -= 1
end
puts "Blast off from while !!"

# until
cart = ['apple', 'banana', 'carrot']
until cart.empty?
    first = cart.shift  # shift pulls the first item out of the array and changes the array in the process
    puts first.upcase
end
