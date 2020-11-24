# Caesar cipher - Odin project ruby exercises
# TODO: fix to loop over the alphabet

def caesar_cipher(string, shift_num)
    # list out alphabet for index
    lowcase_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  
    cipher_string = []
  
    # split & loop char to check which index in alphabet
    # if found shift it to new index
  
    string.split('').each do |char| 
      cipher_char = char
  
      if lowcase_alphabet.include?(char.downcase)
        # if char index reaches end of alphabet, reset index to beginning
        cipher_char = lowcase_alphabet.at(lowcase_alphabet.index(char.downcase)+ (shift_num)
      end
  
      # upcase if original char was capitalised
      char.match?(/[A-Z]/) ? cipher_string.push(cipher_char.upcase) : cipher_string.push(cipher_char)
      
    end
  
    # join array into string
    p cipher_string.join
  
  end
  
  caesar_cipher("HeLLo zZz! ?", 26)
  
  