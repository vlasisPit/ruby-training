=begin
  Ordered, integer-indexed collection of objects
=end

empty_array = []
puts empty_array

one_element_array = [3]
puts one_element_array

diff_elem_array = ['a', "b", 100]
puts diff_elem_array
puts diff_elem_array[2]
puts diff_elem_array[3] # nil
diff_elem_array[3]='q'
puts diff_elem_array[3]
diff_elem_array[3] = nil
puts diff_elem_array[3]
puts diff_elem_array
diff_elem_array[1] = nil
puts diff_elem_array
diff_elem_array[8] = 'test !!!!'
print diff_elem_array
diff_elem_array << "append at the end of the array"
puts "\n"
print diff_elem_array
diff_elem_array << ["append", "new", "array"]
puts "\n"
print diff_elem_array

# retrieve last item with negative number
puts "\n"
print diff_elem_array[-1]

# new array starting from index 2 and return the next 3 objects in the array
test_array = ["a", "b", "c", "d", "e"]
puts "\n"
print test_array[2,3]

#range retrieval
puts "\n"
print test_array[2..3]

array = [2, 4, ['a', 'b'], nil, 4, 'c']
puts "\n"
print array
puts "\n"
print array.length
puts "\n"
print array.reverse # does not modify the initial array. It returns another reversed table
puts "\n"
print array

# If you use ! at the end it keeps the NEW value in the original array
array.reverse!
puts "\n"
print array

# Shuffle
puts "\n"
print array.shuffle # if you use ! at the end, shuffling is permanent

# Remove duplicated characters
puts "\n"
print array.uniq
puts "\n"
print array   # if you use ! at the end, de-dup is permanent

# Remove nil characters
puts "\n"
print array.compact # if you use ! at the end, removing nils is permanent

# Takes any array inside an array and break it apart
puts "\n"
print array.flatten # if you use ! at the end, flatten is permanent

# use ? if you want to query or found out about an array
puts "\n"
print array.include?(4)
puts "\n"
print array.include?(432)

# Remove from position
array.delete_at(0)
puts "\n"
print array

# Delete specific value
array.delete(2)
puts "\n"
print array

# Join values from an array using delimeter. Returns string
puts "\n"
print [1,2,3,4].join('--')
puts "\n"
print [1,2,3,4].join()

# Split. From string to array
puts "\n"
print "1,2,3,4,5".split(',')

=begin
More functions !!!
push - add at the end of the list
pop - removes an item from the end of the list
shift - move an item from the from of the list. Shift everything forward
unshift
=end
puts "\n"
print [1,2,3,4].push(5)
puts "\n"
print [1,2,3,4].shift(2)

#Arrays addition and subtraction
puts "\n"
print [1,2,3] + [3,4,5]
puts "\n"
print [1,2,3] - [2]