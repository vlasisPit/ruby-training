class ShiftCipher

    @@downcase = [*'a'..'z']
    @@uppercase = [*'A'..'Z']
    @@alpabet_length = 26

    def self.encode(plain_string, offset=3)
        puts "Input given for encoding: #{plain_string}"
        encoded_string = []
        
        plain_string.each_char do |character|
            if @@downcase.include?(character)
                index = @@downcase.find_index(character)
                encoded_string << @@downcase[(index+offset) % @@alpabet_length]
            elsif @@uppercase.include?(character)    
                index = @@uppercase.find_index(character)
                encoded_string << @@uppercase[(index+offset) % @@alpabet_length]
            else
                encoded_string << character
            end
        end
        
        encoded_string.join('')
    end

    def self.decode(cipher_string, offset=3)
        puts "Input given for decoding: #{cipher_string}"
        decoded_string = []
        
        cipher_string.each_char do |character|
            if @@downcase.include?(character)
                index = @@downcase.find_index(character)
                decoded_string << @@downcase[index-offset % @@alpabet_length]
            elsif @@uppercase.include?(character)    
                index = @@uppercase.find_index(character)
                decoded_string << @@uppercase[index-offset % @@alpabet_length]
            else
                decoded_string << character
            end
        end
        
        decoded_string.join('')
    end

end