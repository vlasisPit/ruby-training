#!/usr/bin/env ruby

=begin
    Curly-brace format
        Single-line blocks
        Blocks that returs data, no changes

    Do-end format
        multiline blocks
        Blocks that perform actions, make changes
=end

scores = {low: 2, high: 8, avg: 6}
scores.each do |k,v|        #k,v are block variables
    puts "#{k.capitalize} : #{v}"
end