# The dream recorder is designed to store and keep track of the behaviour 
# of the users dreams in a weekly fashion, giving the user a .

require 'sqlite3'
require 'faker'



db = SQLite3::Database.new("dreams.db")
db.results_as_hash = true

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

def daily_dream_log_method(db, description, vivid, recurring, tone)
	db.execute("INSERT INTO dreams (description, vivid, recurring, tone) VALUES (?, ?, ?, ?)", [description,
	vivid, recurring, tone])
end


# UI


puts "Hello. Welcome to the dream recorder, where the mysterious realm of fantasy 
is explored and tracked through your daily logs."
puts "Can you describe the dream you had last night? Type 'n/a' if you 
forgot or don't know what or if you dreamt."

description = gets.chomp

if description == "n/a"
	daily_dream_log_method(db, 'no dream', 'false', 'false', 'no dream')
	exit!
else
end

puts "True or false? This was a vivid dream."

vivid = gets.chomp

puts "True or false? This dream has occured before."

recurring = gets.chomp

puts "Would you describe this dream as a nightmare, blissful, or regular?"

tone = gets.chomp

daily_dream_log_method(db, description, vivid, recurring, tone)

dreams_log_array = db.execute('SELECT * FROM dreams')

weekly_array = dreams_log_array 

no_dreams = 0
vivid_dreams = 0
recurring_dreams = 0
nightmares = 0
regular_dreams = 0
blissful_dreams = 0

if weekly_array.length % 7 == 0 
	
weekly_array = weekly_array[-7..-1]

puts "For the week, your dreams have been:"
	weekly_array.each do |dreams_log_array|
				puts "On #{dreams_log_array['date']}, you dreamt #{dreams_log_array['description']}."
				no_dreams += 1 if dreams_log_array.has_value?("no dream")
				vivid_dreams += 1 if dreams_log_array['vivid'] == "true"
				recurring_dreams += 1 if dreams_log_array['recurring'] == "true"
				nightmares += 1 if dreams_log_array['tone'] == "nightmare"
				regular_dreams += 1 if dreams_log_array['tone'] == "regular"
				blissful_dreams += 1 if dreams_log_array['tone'] == "blissful"
	end
	puts "Now lets tally up your dream types for the week."
	puts "Wait, what? Nights without dreams: #{no_dreams}." 
	puts "Pinch yourself! Nights with vivid dreams: #{vivid_dreams}."
	puts "Deja Vu! Nights with recurring dreams: #{recurring_dreams}."
	puts "Uh-oh, Nights with nightmares: #{nightmares}."
	puts "Boring! Nights with regular dreams #{regular_dreams}."
	puts "Can't this just be the real world? Nights with blissful dreams: #{blissful_dreams}."

end
	

