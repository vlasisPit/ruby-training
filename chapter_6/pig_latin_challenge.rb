#!/usr/bin/env ruby

VOWELS = ['a', 'e', 'i', 'o', 'u'] 

def pig_latin(word)
    if word==""
        return "ay"
    end

    word.downcase!

    first_vowel_index = get_first_vowel_index(word)
    if first_vowel_index == 0
        word + "ay"
    else
        word[first_vowel_index..-1] + word[0..first_vowel_index-1] + "ay"
    end
end

def get_first_vowel_index(word)
    (0..word.length).each do |i|
        if VOWELS.include? word[i]
            return i
        end
    end
end

# begin with ONE consonant => move consonant to the end with "ay"
puts pig_latin("pig") == "igpay"

# begin with ONE vowel => to the end with "ay"
puts pig_latin("elevator") == "elevatoray"

# begin with ONE consonant cluster => move cluster to the end with "ay"
puts pig_latin("glove") == "oveglay"
puts pig_latin("where") == "erewhay"

puts pig_latin("Ruby") == "ubyray"

puts pig_latin("") == "ay"