def caesar_cipher(str, shift)
  first_capital_letter_code = "A".ord
  first_small_letter_code = "a".ord
  
  str_arr = str.split("")

  ciphered_message = ""
  str_arr.each do |letter| 
    if !is_normal_character?(letter)
      ciphered_message += letter
      next
    end
      
    shifted_letter_code = get_shifted_letter_code(letter, shift)

      used_letter_code = letter == letter.upcase ? first_capital_letter_code : first_small_letter_code
    remainder = (shifted_letter_code - used_letter_code)%26

    ciphered_message += (used_letter_code + remainder).chr
  end

  return ciphered_message

end

def get_shifted_letter_code (letter, shift)
  letter.ord + shift
end

def is_normal_character?(letter)
  is_small_letter = letter.ord >= "a".ord && letter.ord <= "z".ord
  is_capital_letter = letter.ord >= "A".ord && letter.ord <= "Z".ord

  is_small_letter || is_capital_letter
end

puts caesar_cipher("xyz!", 3)
puts caesar_cipher("abc!", -3)
puts caesar_cipher("XYZ!", 3)
puts caesar_cipher("ABC!", -3)
puts caesar_cipher("What a string!", 5)
puts caesar_cipher("What a string!", 31)
#Bmfy f xywnsl!