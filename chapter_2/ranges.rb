#Inclusive range: First and last numbers are included (2 dots)
inclusive = 1..10
puts inclusive.class
# puts 1..10.class # this will NOT work
puts (1..10).class

#Exclusive range: Last number is excluded (3 dots)
exclusive = 1...10

puts inclusive.begin  #begining of the range
puts inclusive.first  #first item of the range
puts inclusive.end  #end item of the range
puts inclusive.last  #last item of the range

puts exclusive.begin  #begining of the range
puts exclusive.end  # !!!!!!!!!!!!!!!!!!!!! this is 10

array = [*inclusive]
puts array.to_s

# Character ranges
char_range = 'a'..'m'
puts char_range.include?("g")

array = [*char_range]
puts array.to_s