=begin
    self is a special variable that points to the object that "owns" the currently executing code. 
    -Use self to reference the current instance from code inside the instance
    -Add self when calling writer methods like self.first_name=
=end

class Radio
    attr_reader :volume

    def volume=(value)
        return if value < 1 || value > 10
        @volume = value
    end

    def crank_it_up 
        @volume = 11    #calls the instance variable directly and not through method
    end

    def crank_it_up_with_self
        self.volume = 11    #calls the instance variable using method
    end

    def volume_status
        "Current volume: #{@volume}"    #you can call it without @ if you like
    end

    def volume_status_2
        "Current volume: #{volume}"    #you can call it without @ if you like because of attr_reader
    end

end
