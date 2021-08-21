#Override and extend behaviours from the parent class
class SofaBed < Sofa

    #class attribute. For all classes SofaBed
    @@can_open = true

    #extend the behaviour of the parent class
    attr_accessor :length_opened, :is_open

    # redifing area method (method override)
    def area
        is_open ? width * length_opened : width * length
    end

end