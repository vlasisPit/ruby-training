x = 1
y = nil
puts x == 1
puts x != 1
puts true.class
puts false.class
puts x > 0 && x < 100
puts !x # tell us if x has a value or not
puts x.nil? # check to see if x is nill or not
puts y.nil? # check to see if y is nill or not
puts 2.between?(1, 5)
puts [1, 2, 3].empty?
puts [].empty?

hash = { 'a' => 1, 'b' => 2 }
puts hash.has_key?('a')
puts hash.has_key?("a")
puts hash.has_key?(:a)
puts hash.has_value?(5)
puts hash.has_value?(2)