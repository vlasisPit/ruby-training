=begin   
Factory pattern
=end
class Product

    attr_accessor :name, :price

    def initialize(price=0.0)
        @price = price
    end

    #class method (like static in Java)
    def self.exclusive
        Product.new(45.0)
    end

    def self.standard
        Product.new(30.0)
    end

    def self.discounted
        Product.new(15.0)
    end

end