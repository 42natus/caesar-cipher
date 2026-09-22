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

def caesar_cipher(message, right_shift)
  codepoints = message.codepoints

  codepoints.each_with_index do |codepoint, idx|
    if codepoint.between?(65, 90) # uppercase letters
      codepoints[idx] = codepoint + right_shift
      if codepoints[idx] > 90
        codepoints[idx] -= 26 # wrap from 'Z' to 'A'
      end
    elsif codepoint.between?(97, 122) # lowercase letters
      codepoints[idx] = codepoint + right_shift
      if codepoints[idx] > 122
        codepoints[idx] -= 26 # wrap from 'z' to 'a'
      end
    end
  end

  encrypted = ""
  codepoints.each { |character| encrypted << character }

  encrypted
end


encrypted_message = caesar_cipher(getMessage(), getRightShift())
puts "\nYour encrypted message is:\n\"#{encrypted_message}\""