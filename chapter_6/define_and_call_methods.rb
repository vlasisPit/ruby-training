#!/usr/bin/env ruby

=begin
    Call them methods and NOT functions
    In general, lowercase with underscores
    First letter => always lowercase
    Can contains ONLY letters, digits and underscores
    Last character can be also ? ! =
=end

def welcome
    puts "Hello world !!!"
end

def blanket_patterns(colors, lines)
    lines.times do |i| 
        first = colors[0]
        rest = colors[1..-1]
        colors = rest + first
        puts colors
    end
end


welcome
blanket_patterns('++*~~*++*', 20)
welcome

# can be redifined without error
def welcome
    puts "Hello world 2 !!!"
end

welcome

