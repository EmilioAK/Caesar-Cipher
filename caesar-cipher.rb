def modulatedArray (array, index)
    return array[index%array.length()]
end

def char_is_letter (alphabet, char)
    return alphabet.include? char.downcase
end

def is_upper?(char)
    return char != char.downcase
end

def shift_char (alphabet, char, number)
    current_pos = alphabet.find_index(char)
    return modulatedArray(alphabet, current_pos+number)
end

def caesar_cipher (string, number)
    alphabet = ("a".."z").to_a
    string_to_array = string.split("")
    
    result = string_to_array.map do |char|
        if char_is_letter(alphabet, char)
            if is_upper?(char)
                char = char.downcase
                char = shift_char(alphabet, char, number)
                char.upcase!
            else
                char = shift_char(alphabet, char, number)
            end
        else
            char
        end
    end

    return result.join("")
end