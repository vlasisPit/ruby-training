=begin
attribute methods
    -attr_reader
    -attr_writer
    -attr_accessor
=end

class Animal

    attr_accessor :noise

    def initialize
        @noise = "Bang !"
        puts "New animal instantiated"
    end

    #initialize with hash
    def initialize(options ={})
        @noise = options[:noise] || 'Grrrr!'
    end

    # you can write in one line => attr_reader :name (check Animal2 class)
    def noise
        @noise
    end

    # you can write in one line => attr_writer :name (check Animal2 class)
    def noise=(value)
        @noise = value
    end
end

