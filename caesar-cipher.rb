def arrayLooper (array, index)
    return array[index%array.length()]
end

def char_is_letter (alphabet, char)
    return alphabet.include? char.downcase
end

def is_upper?(c)
    c != c.downcase
end

def shift_char (alphabet, char, number)
    current_pos = alphabet.find_index(char)
    return arrayLooper(alphabet, current_pos+number)
end

def caesar_cipher (string, number)
    alphabet = ("a".."z").to_a
    shifted_chars = []
    
    string.split("").each do |char|
        if char_is_letter(alphabet, char)
            if is_upper?(char)
                char = char.downcase
                char = shift_char(alphabet, char, number)
                shifted_chars.append(char.upcase)
                next
            else
                char = shift_char(alphabet, char, number)
            end
        end
        shifted_chars.append(char)
    end
    return shifted_chars.join("")
end