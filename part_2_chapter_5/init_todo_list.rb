#!/usr/bin/env ruby

require_relative 'classes/todo_list'

list = ToDoList.new(['dishes', 'nap', 'laundry', 'vacuum'])

puts
puts "First: " + list.first
puts "-"*36

puts
puts "Longer than 6: " + list.find {|item| item.length > 6}
puts "-"*36

puts "Original list"
puts list.map {|item| "> #{item.capitalize}"}
puts "-"*36

list << "sweep"
puts "Updated list"
puts list.map {|item| "> #{item.capitalize}"}
puts "-"*36

puts
puts "Sorted:"
list.sort.each_with_index do |item, i|
    puts "#{i+1}: #{item}"
end
