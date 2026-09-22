def caesar_cipher(message, right_shift)
  # "\"#{message}\" shifted by #{right_shift} letters."
end

def getMessage()
  puts "What message would you like to encrypt?"
  message = gets.chomp
  message
end

def getRightShift()
  puts "By how many letters would you like to right shift it?"
  right_shift = gets.chomp.to_i
  right_shift
end


encrypted_message = caesar_cipher(getMessage(), getRightShift())
puts "Your encrypted message is:\n#{encrypted_message}."