#!/usr/bin/env ruby

=begin
    Used ONLY for hashes
    Merges two hashes together

    You can use merge and merge!
    ! powerful or destructive version of the method
=end

h1 = {:a => 2, :b => 4, :c => 6}
h2 = {:a => 3, :b => 4, :d => 8}

# h2 wins on same key and different value
puts h1.merge(h2)

# h1 wins on same key and different value
puts h2.merge(h1)

# in case of conflict, you can use this block
puts h1.merge(h2) {|key,old, new| new}
puts h1.merge(h2) {|key,old, new| old}

# in case of conflict, return whatever you like
puts h1.merge(h2) {|key,old, new| old < new ? old : new}
puts h1.merge(h2) {|key,old, new| old * new}
