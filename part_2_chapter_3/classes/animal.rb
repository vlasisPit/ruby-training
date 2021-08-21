class Animal
    attr_accessor :noise
    @@total_animals = 0

    def initialize
        @@total_animals += 1
    end

    def self.total_animals
        @@total_animals
    end
end