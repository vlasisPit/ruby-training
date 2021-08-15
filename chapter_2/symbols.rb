=begin
  Is an object type like strings that cannot be edited
  Begin with a colon (:first_name)
  Not delimeted by colons
  Used to label a piece of data

  They can be used in a hash because they will never be edited !!!!!!!
  Ruby uses computer memory in a better way
=end

# Example
person = {
  :first_name => 'Benjamin',
  :last_name => 'Franklin'
}
puts "\n"
last_name = person[:last_name]
print last_name

# objectId unique id used by ruby to identify every object
puts "\n"
print last_name.object_id

# Allocate a new object for string
puts "\n"
print "test".object_id
puts "\n"
print "test".object_id

# Keep the same object for symbol
puts "\n"
print :test.object_id
puts "\n"
print :test.object_id

# Hash Symbol shorthand (Key is always a symbol)
scores = {:low => 2, :high => 8, :avg => 6}
scores2 = {low: 2, high: 8, avg: 6}
puts "\n"
print scores.keys.first.class
puts "\n"
print scores2.keys.first.class

