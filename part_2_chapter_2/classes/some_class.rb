=begin   
-Class methods (like static methods in Java)
Behaviours related to a class generally, not to a specific instance
Called directly on a class, not on an instance
Examples :
    -Animal.new
    -Invocide.find(3812)
    -Bicycle.all_brands

-Clas attributes (@@variable)
Properties related to a class generally, not to a specific instance    
Shared values among all instances of a class

-Class Reader/Writer Methods
There are no attr_* method equivalents
Ruby on Rails has cattr_* methods, but Ruby not yet
=end

class SomeClass

    #class attribute
    @@class_attribute = ['1', '2']

    #Define class method. use self in front of a method name
    def self.method_name
        puts 'Test'
    end

    def self.get_class_attribute
        @@class_attribute
    end

end