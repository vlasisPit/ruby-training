word = "++*~~*++*"

#First solution
puts word
word_array = word.split("")
1.upto(19) do 
    word_array.rotate!
    puts word_array.join("")
end

#Second solution
20.times do |i| 
    first = word[0]
    second = word[1..-1]    #-1 the last element in array
    word = second + first
    puts word
end

#Third solution
colors = "++*~~*++*"
repeats = 20
colors_array = colors.split("")
1.upto(repeats) do |i| 
    first = colors_array.shift
    colors_array << first
    puts colors_array.join("")
end

