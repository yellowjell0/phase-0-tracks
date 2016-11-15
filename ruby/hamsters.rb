puts "What is the hamster's name?"
name = gets.chomp
puts "Which volume level would this hamster prefer? 1-10?"
volume = gets.chomp.to_i
puts "What is the fur color of this hamster?"
color = gets.chomp
puts "Is this hamster a good cantidate for adoption? (T/F)"
cantidate = gets.chomp
puts "What is the estimated age?"
age = gets.chomp
if age == ""
	puts nil
end

puts "Hello, #{name}"
puts "OK, we'll keep it at #{volume}"
puts "#{color} is a lovely color"
if cantidate == "T"
	puts "Great, we'll make the arrangements"
elsif cantidate == "F"
	puts "OK, into the furnace they'll go."
end
puts "#{name} is only #{age}?"
		




