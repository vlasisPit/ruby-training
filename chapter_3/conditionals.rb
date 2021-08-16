x = 300

if x <= 10
    puts "10 or below"
elsif x >= 20
    puts "20 or above"
else
    puts "Between 10 and 20"
end

=begin
    Unless (opposite of the boolean)
    Use when you want to avoid !
    
    unless boolean 
            .......
    end

    #same as 
    if !boolean
            .......
    end
=end

cart = ['apple', 'banana', 'carrot']
unless cart.empty?
    puts "First item = #{cart[0]}"
else
    puts "The cart is empty"
end

# case statement !!!!!!!!!!!

#case with booleans
count = 7

case
when count == 0
    puts "nobody"
when count == 1
    puts "1 person"
when (2..5).include?(count)
    puts "several people"
else
    puts "many people"
end

#case with comparisons
case count  # difference !!!!!!!!
when 0
    puts "nobody"
when 1
    puts "1 person"
when 2..5
    puts "several people"
else
    puts "many people"
end

# Ternary operator
puts count == 1 ? "#{count} person" : "#{count} people" 

# Set default values by using ||
y = "real"
z = "default"
i = nil
x = y || z
puts x
puts i || z
DEFAULT_LIMIT = 1002
limit = nil
puts limit || DEFAULT_LIMIT

# set default value. If x has a value, then use it.  Else set it equal to y
limit = nil
limit ||= DEFAULT_LIMIT
puts limit

# set default with unless
limit = DEFAULT_LIMIT unless limit
puts limit

greeting_enabled = true
puts "Print it" if greeting_enabled
greeting_enabled = false
puts "Print it" if greeting_enabled

