=begin
    self is a special variable that points to the object that "owns" the currently executing code. 
    -Use self to reference the current instance from code inside the instance
    -Add self when calling writer methods like self.first_name=
=end

class Radio
    attr_reader :volume, :freq, :band

    @@audio_samples = [
        "Here comes the sun",
        "Like a Rolling' stone",
        "Stairway to heaven",
        "a traffic report"
    ]

    def self.fm(options={})
        Radio.new({volume: options[:volume], freq: options[:freq], band: 'FM'})        
    end

    def self.am(options={})
        Radio.new({volume: options[:volume], freq: options[:freq], band: 'AM'})        
    end

    def initialize(options={})
        @volume = options[:volume] || 3
        @band = options[:band] || 'FM'

        if options[:band] == 'FM'
            frequency(options[:freq] || 88.0)
        elsif options[:band] == 'AM'
            frequency(options[:freq] || 540.0)
        else 
            frequency(options[:freq])
        end 
        
    end

    def frequency(value=88.0) 
        if @band == 'FM'
            set_freq_for_fm(value, 88.0)                       
        elsif @band == 'AM'
            set_freq_for_am(value, 540.0)     
        else
            @freq = value
        end
    end

    def status 
        "station: #{freq} #{band}, volume: #{volume}"
    end

    def volume=(value)
        return if value < 1 || value > 10
        @volume = value || 1
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

    def play
        puts "The radio plays " + audio_stream        
    end

    def audio_stream
        @@audio_samples.sample  #array method that returns an element randomly from an array
    end

private
    def set_freq_for_fm(value, default_value)
        if value >= 88.0 && value <= 108.0
           @freq = value
       else            
           @freq = default_value
       end 
   end

   def set_freq_for_am(value, default_value)
       if value >= 540.0 && value <= 1600.0
           @freq = value
       else
           @freq = default_value
       end 
   end

end
