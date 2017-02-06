# The dream recorder is designed to store and keep track of the behaviour 
# of the users dreams in a weekly and monthly fashion, giving the user the
# ability to recall dreams, and to check how regularly some of the same types are occuring.

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("dreams.db")
db.results_as_hash = true
counter = 1

create_dream_table = <<-SQL
CREATE TABLE IF NOT EXISTS dreams(
id INTEGER PRIMARY KEY,
description VARCHAR(300),
date datetime default current_timestamp,
vivid BOOLEAN,
recurring BOOLEAN,
tone VARCHAR(200)
)
SQL

db.execute(create_dream_table)

def daily_dream_log(db, description, vivid, recurring, tone)
	db.execute("INSERT INTO dreams (description, vivid, recurring, tone) VALUES (?, ?, ?, ?)", [description,
		vivid, recurring, tone])
end


# UI

puts "Hello. Welcome to the dream recorder, where the mysterious realm of fantasy 
is explored and tracked through daily logs."
puts "Can you describe the dream you had last night? Type 'n/a' if you 
forgot or don't know what or if you dreamt."

description = gets.chomp

if description == "n/a"
	daily_dream_log(db, 'no dream', 'false', 'false', 'no dream')
	exit!
else
end

puts "True or false? This was a vivid dream."

vivid = gets.chomp

puts "True or false? This dream has occured before."

recurring = gets.chomp

puts "Would you describe this dream as a nightmare, blissful, or regular?"

tone = gets.chomp

dreams_log_array = db.execute('SELECT * FROM dreams')


weekly_array = dreams_log_array.combination(7).to_a
p weekly_array



# def weekly_report
	no_dreams = 0
	vivid_dreams = 0
	recurring_dreams = 0
	nightmares = 0
	regular_dreams = 0
	blissful_dreams = 0

	weekly_array.each do |dreams_log_array|
		puts "For the week, your dreams have been:"
		dreams_log_array.each_with_index do |hash, index|
		puts "On #{dreams_log_array[index]['date']}, you dreamt #{dreams_log_array[index]['description']}."
		no_dreams += 1 if dreams_log_array[index].has_value?("no dream")
		vivid_dreams += 1 if dreams_log_array[index]['vivid'] == "true"
		recurring_dreams += 1 if dreams_log_array[index]['recurring'] == "true"
		nightmares += 1 if dreams_log_array[index]['tone'] == "nightmare"
		regular_dreams += 1 if dreams_log_array[index]['tone'] == "regular"
		blissful_dreams += 1 if dreams_log_array[index]['tone'] == "blissful"
		end

	end
p no_dreams
p vivid_dreams
# end






