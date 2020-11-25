# Caesar cipher - Odin project ruby exercises

def caesar_cipher(string, shift_num)
    # list out alphabet for index
    lowcase_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  
    cipher_string = []
  
    # split & loop char to check which index in alphabet
    # if found shift it to new index
  
    string.split('').each do |char| 
      cipher_char = char

      p cipher_char
  
      if lowcase_alphabet.include?(char.downcase)
        index = lowcase_alphabet.index(char.downcase)

        # if char index reaches end of alphabet, reset index to beginning
        new_index = index + (shift_num % 26)

        if new_index >= 26
          new_index = new_index - 26
        end

        cipher_char = lowcase_alphabet.at(new_index)
      end
  
      # upcase if original char was capitalised
      char.match?(/[A-Z]/) ? cipher_string.push(cipher_char.upcase) : cipher_string.push(cipher_char)
      
    end
  
    # join array into string
    p cipher_string.join
  
  end
  
  caesar_cipher("b", 63)
  
  