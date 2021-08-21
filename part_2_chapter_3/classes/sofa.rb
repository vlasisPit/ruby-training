class Sofa

    #class attribute. For all classes. Not subclasses
    @@can_open = false

    #instance variables
    attr_accessor :width, :length

    def area  
        width * length
    end

end