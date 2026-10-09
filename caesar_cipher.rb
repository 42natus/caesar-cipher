# frozen_string_literal: true

def message
  puts 'What message would you like to encrypt?'
  gets.chomp
end

def shift_factor
  puts 'By how many letters would you like to shift it?'
  gets.chomp.to_i
end

def alphabet?(character)
  character.between?('A', 'Z') || character.between?('a', 'z')
end

def right_shift(character, factor)
  shifted = character.ord + factor

  if (character.between?('A', 'Z') && shifted > 'Z'.ord) ||
     (character.between?('a', 'z') && shifted > 'z'.ord)
    return (shifted - 26).chr
  end

  shifted.chr
end

def caesar_cipher(message, shift_factor)
  characters = message.chars

  encrypted = characters.map do |character|
    alphabet?(character) ? right_shift(character, shift_factor) : character
  end

  encrypted.join
end

encrypted_message = caesar_cipher(message, shift_factor)
puts "\nYour encrypted message is:\n\"#{encrypted_message}\""
