class Pig < Animal

    def initialize
        @noise = 'Oink!'
    end

    #extend base class with a new method
    def eat
        puts "Mum mum mum"
    end
end