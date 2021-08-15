=begin
  "Hello" equals to 'Hello'
=end

puts 'Hello\''.upcase
puts "Hello'".upcase

greeting = "Hello"
target = "World"
puts greeting + ' ' + target

# Append operator
greeting << " "
greeting << "World "
greeting << "2 !!!"
puts greeting

# Multiplication
puts "Test " * 3  # "Test Test Test "
puts 1.to_s * "3".to_i # "111"

# Reverse
puts greeting.reverse

# Length
puts greeting.length

# String escaping
puts 'Let\'s escape'
puts 'Let\\\'s escape'

# Control characters. Only works with ""
puts "\ta\tb\nc\n\td"
puts '\ta\tb\nc\n\td'

# Strings interpolation. Only works with ""
msg = 'Vlasis'
puts "Hello #{msg}"
puts 'Hello #{msg}' # DOES NOT WORK !!!!!!!!!!!
puts "1 + 1 = #{1+1}"
puts "Hello #{msg.upcase}"
