# method: client entry program
# input: user input, strings
# steps: UI will ask user for entry, and entries will be stored inside of a data structure and reprinted in a easily readable fashion
# output: arrays and hashes
client_hash = Hash.new

puts "Client entry program."

puts "What is the clients name?"
name = gets.chomp
client_hash.store(:name, name)

puts "What is the clients age?"
age = gets.to_i
client_hash.store(:age, age)

puts "How many children does the client have?"
children = gets.to_i
client_hash.store(:children, children)

puts "What theme of decor would the client like to have?"
decor = gets.chomp
client_hash.store(:decor, decor)

puts "Was the client reffered by a previous client?"
reffered = gets.chomp
client_hash.store(:reffered, reffered)

puts "Will the client be present upon designing?"
present = gets.chomp
client_hash.store(:present, present)

puts "Does the client have pets?"
pets = gets.chomp
client_hash.store(:pets, pets)

p client_hash

puts "Did were any errors? Type 'none' if no errors were made."
error = gets.chomp
if error == "none"
  p client_hash
  exit!
end
puts "What is the correction?"
correction = gets.chomp
client_hash.store(error.to_sym, correction)

p client_hash
