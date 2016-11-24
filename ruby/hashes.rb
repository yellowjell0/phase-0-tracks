# Ask user to enter info and use info as appropriate data type
puts "What is the clients name?"
name = gets.chomp

puts "How many children does the client have?"
children = gets.to_i

puts "What is the age of the client?"
age = gets.to_i

puts "What is the decor theme the client desires?"
decor_theme = gets.chomp

puts "Does the client have hardwood floors?"
hardwood_floors = gets.chomp

puts "How many rooms in the house does the client have?"
rooms = gets.to_i
# Create a hash from the info entered and print the hash

client_information = {
  name: name,
  children: children,
  age: age,
  decor_theme: decor_theme,
  hardwood_floors: hardwood_floors,
  rooms: rooms
}
p client_information

# Give the opportunity to update the key unless done is entered. If the specific error key is entered, allow the option to change the data
puts "Were there any errors (name, children, age, decor, floors, rooms)?"
errors = ""
no_errors = "done"
until errors == no_errors
errors = gets.chomp
if errors == "name"
  puts "What was the correction?"
  client_information[:name] = gets.chomp
  puts "Were there any other errors? Enter done when finished."
  elsif errors == "children"
  puts "What was the correction?"
    client_information[:children] = gets.chomp
    puts "Were there any other errors? Enter done when finished."
    elsif errors == "age"
    puts "What was the correction?"
      client_information[:age] = gets.chomp
      puts "Were there any other errors? Enter done when finished."
      elsif errors == "decor"
      puts "What was the correction?"
        client_information[:decor] = gets.chomp
        puts "Were there any other errors? Enter done when finished."
        elsif errors == "floors"
        puts "What was the correction?"
          client_information[:hardwood_floors] = gets.chomp
        puts "Were there any other errors? Enter done when finished."
          elsif errors == "rooms"
          puts "What was the correction?"
            client_information[:rooms] = gets.chomp
            puts "Were there any other errors? Enter done when finished."
end
end
# Print the latest version
p client_information
# Exit the program
exit!