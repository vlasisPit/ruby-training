=begin   
    No reason to use shebang line on a just class Ruby file.
    #!/usr/bin/env ruby
    This file will be loaded by other Ruby scripts

    Use singular nouns for class names
    Capitalize and camel case names
    Define each class in separate file
    Classes can be redefined or modified without error

    Class : is a template of the state and behaviour of objects
    Attributes = state (instance variables with @ in the begining)
    Methods = behaviour

    Readers/Writers methods (getters/setters) to access instance variables.
=end

class Person

    attr_accessor :first_name, :last_name

    def say_hello
        'Hello!'
    end
    
    def full_name
        "#{first_name} #{last_name}"
    end

    def initial_and_last_name
        "#{get_initial(first_name)} #{last_name}"
    end

private

    def get_initial(name)
        name.chars.first + "."
    end

end
