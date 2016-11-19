def encrypt(phrase)
  phrase_length = phrase.length
  index = 0
  result = ''
  while phrase_length > 0
  result += phrase[index].next
  index += 1
  phrase_length -= 1
  if result == 'aa'
    result.slice! 'a'
end
end
result
end



class String
  def previous
    (self.ord - 1).chr
  end
end

def decrypt(phrase)
  phrase_length = phrase.length
  index = 0
  result = ''
  while phrase_length > 0
  result += phrase[index].previous
  index += 1
  phrase_length -= 1
  if result == "`"
    result = 'z'
  end
end
result
end

puts "Would you like to encrypt or decrypt a password?"
answer = gets.chomp
puts "What is your password?"
password = gets.chomp
if answer == 'decrypt'
  p decrypt(password)
  elsif answer == 'encrypt'
  p encrypt(password)
end
puts "Happy Espionaging!"
exit!
