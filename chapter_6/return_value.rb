#!/usr/bin/env ruby

=begin     
    Methods in Ruby return the last operation's value by default
    You can also use an explicit return by using "return"
    Useful in conditional statements and loops, when you prefer to return early

    Advice NOT to use puts or print. Use methods that returns values instead
    and then use puts or print
    Exception: Methods designed strictly for output
=end

def subtract(n1, n2)
    n1 - n2
end

#it is slower to use return
def subtract2(n1, n2)
    return n1 - n2
end

def subtract_with_caution(n1, n2)
    result = n1 - n2
    result = 0 if result < 0
end

def subtract_with_caution_fix(n1, n2)
    result = n1 - n2
    result = 0 if result < 0
    result  # return the result
end

puts subtract(5,2)
puts subtract2(5,2)
puts subtract_with_caution(5,2)     #returns nil because this the last action never executed
puts subtract_with_caution(2, 5)

puts subtract_with_caution_fix(5,2)
puts subtract_with_caution_fix(2,5)