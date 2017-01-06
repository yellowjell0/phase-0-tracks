#get hamster's name 
puts "Hamster Name:"
#store name in var
name = gets.chomp
#get hamster noise level
puts "On a scale of 1 (mute)- 10(Loud), how loud would you say your hamster is?"
#store volume in var
noise = gets.to_i
#get string for hamster color
puts "What color is your hamster?"
#store string in var
color = gets.chomp
#get adoptable boolean
puts "Is hamster adoptable? (True/ False)"
#store boolean in var
adoptable = gets.chomp

#get hamster age
puts "How old is your hamster?"
#store hamster age in var
age = gets.chomp
if age == ""
  age = nil
else 
  age = age.to_i
end

puts "Hamster data:
Name: #{name}
Age: #{age}
Color: #{color}
Noise Level: #{noise}
Adoptable?: #{adoptable}
"