=begin
unordered, object-indexed collection of objects (or key-value pairs)
Or dictionaries
=end

#Array !!!
car = ['Ford', 'Mustang', 'blue', 'tan']
puts "\n"
print car

# Hash !!!!
car_hash = {
  'brand' => 'Ford',
  'model' => 'Mustang',
  'color' => 'blue',
  'interior_color' => 'tan'
}
puts "\n"
print car_hash

# hash retrieval
puts "\n"
print car_hash['color']
car_hash['color'] = "green !!"
puts "\n"
print car_hash['color']

# add new key-value pair
car_hash['doors'] = 2
puts "\n"
print car_hash

# take all keys from hash on a form of array
puts "\n"
print car_hash.keys

# take all values from hash on a form of array
puts "\n"
print car_hash.values

# hash to array
puts "\n"
print car_hash.to_a
