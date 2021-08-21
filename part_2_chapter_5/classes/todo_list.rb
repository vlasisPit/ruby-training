=begin   
-Define a class for ToDoList
-Mix in Ruby's built-in module Enumerable
-Array, Hash, Range
-Define ToDoList#<< operator to add new item in the FRONT of the list
=end

class ToDoList

    #Takes all the functionality of Enumerable into our class
    # !!!!!!!!!!!!!!! We must define each also
    # By doing so, you can override the enumerable methods and also extend them
    include Enumerable

    attr_accessor :items

    def initialize(items=[]) 
        @items = items
    end

    #in order to use an enumerable, we must define the method each
    #to pass it on every part of the code the enumerable code is calling
    def each 
        @items.each {|item| yield(item)} 
    end

    def <<(new_item) 
        @items.unshift(new_item) #unshift. Put an item in front
    end

end
