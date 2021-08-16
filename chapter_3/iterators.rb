=begin
    -Numbers: times, upto, downto, step
    -Range: each, step
    -String: each_line, each_char, each_byte
    -Array: each, each_index, each_with_index
    -Hash: each, each_key, each_value, each_pair
=end

# times iterator
i = 5
i.times do
    puts "Countdown: #{i}"
    i -= 1
end
puts "Blast off !!!!"

5.times {puts "Times"}
1.upto(5) {puts "upto"}
5.downto(1) {puts "downto"}
(1..5).each {puts "each"}
5.downto(1) {|i| puts "downto #{i}"}

5.downto(1) do |i| 
    puts "downto #{i}"
end

fruits = ['banana', 'apple', 'pear']

fruits.each do |fruit|
    puts fruit.capitalize
end

for fruit in fruits
    puts fruit.capitalize
end

"vlasis".each_char do |char| 
    puts char
end