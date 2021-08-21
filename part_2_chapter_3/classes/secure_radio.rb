require_relative('./shift_cipher')

class SecureRadio < Radio

    @@shift = 3

    def self.fm(options={})
        SecureRadio.new({volume: options[:volume], freq: options[:freq], band: 'FM'})        
    end

    def self.am(options={})
        SecureRadio.new({volume: options[:volume], freq: options[:freq], band: 'AM'})        
    end

    # returns an excrypted audio stream
    def play 
        audio_stream = self.audio_stream        
        puts ShiftCipher.encode(audio_stream, @@shift)
    end

end