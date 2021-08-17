#!/usr/bin/env ruby

=begin
    global => $variable
    class => @@variable
    instance => @variable
    local => variable    
    block => variable 
=end

value = 10

# this cannot work. Value variable is not valid on method's scope
# value is a local variable
# Also, you can not set the variable inside the method
# If you want to have access to the variable, you need to pass it 
# as an argument or to set it as instance variable 
def output_value 
    puts value
end

#output_value