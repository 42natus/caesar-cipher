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

def right_shift(character, shift)
  capital_letters = ("A".."Z").to_a
  small_letters = ("a".."z").to_a
  alphabets = 26

  if capital_letters.include?(character) 
    position = capital_letters.index(character)
    return capital_letters[(position + shift) % alphabets]
  end
  
  if small_letters.include?(character) 
    position = small_letters.index(character)
    return small_letters[(position + shift) % alphabets]
  end
end

def caesar_cipher(message, right_shift)
  characters = message.split("")
  
  characters.each_with_index do |character, idx|
    if character.between?("a", "z") || character.between?("A", "Z")
      characters[idx] = right_shift(character, right_shift)
    end
  end
  characters.join
end


encrypted_message = caesar_cipher(getMessage(), getRightShift())
puts "\nYour encrypted message is:\n\"#{encrypted_message}\""