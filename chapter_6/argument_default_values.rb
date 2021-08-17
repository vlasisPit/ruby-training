#!/usr/bin/env ruby

def welcome(greet, name, punct)
    greet + ' ' + name + punct
end
puts welcome('Hello', 'friend', '!')

# default value on argument
def welcome(greet, name, punct='@')
    greet + ' ' + name + punct
end
puts welcome('Hello', 'friend')

#empty array as the default value
def out_of_stock(items=[])
    items.find_all {|item| item.qty == 0}
end

# options hash
def welcome(greeting, options={})
    name = options[:name] || 'friend'   #default value on name
    punct = options[:punct] || '!'      #default value on punct
    greeting + ' ' + name + punct
end
puts welcome('Hello', {:punct => '!!!'})