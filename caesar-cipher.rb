def modulated_offset(arr, char, offset)
    arr[(arr.index(char) + offset) % arr.length]
end

def cyper_char(char, offset)
    alphabet = ("a".."z").to_a
    
    if alphabet.include?(char)
        modulated_offset(alphabet, char, offset)
    elsif alphabet.include?(char.downcase)
        modulated_offset(alphabet, char.downcase, offset).upcase
    else
        char
    end
end

def caesar_cipher (string, offset)
    string.chars.map{|char| cyper_char(char, offset)}.join
end
