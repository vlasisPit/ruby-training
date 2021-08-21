class Animal
    attr_accessor :noise, :color
    @@total_animals = 0
    @@current_animals = []

    @@species = ['cat', 'cow', 'dog', 'duck', 'horse']

    def initialize(options={})
        @noise = options[:noise] || 'Grrrr!'
        @color = options[:color] || 'white'
        @@total_animals += 1
        @@current_animals << self
    end

    def self.types
        ['pig', 'cow', 'duck']
    end

    def self.create_a_pig
        Animal.new(noise: 'Oink!', color: 'pink' )
    end

    # getter/reader for class attribute 
    def self.species
        @@species
    end

    # setter/writer for class attribute, If input is an array, then assisgn it to class variable
    def self.species=(array)
        return unless array.is_a?(Array)
        @@species = array
    end

    def self.total_animals
        @@total_animals
    end
    
    def self.current_animals
        @@current_animals
    end  

end