puts "Lets make an alias. What is your first and last name?"

name = ""
stored_aliases = []
stored_names = []

until name == "quit"

def alias_creator(name)
  stored_aliases = []
  name_array = name.split(' ')
  name_array[0], name_array[1] = name_array[1], name_array[0]
  name = name_array.join(' ')
  name_array = name.downcase.split(' ')
  name = name_array.join(' ')
  vowels_changed = name.tr('aeiou', 'eioua') 
  consonants_changed = vowels_changed.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
  name = consonants_changed.split(/ |\_|\-/).map(&:capitalize).join(" ") 
  stored_aliases << name
  p name
end

name = gets.chomp
stored_names << name.split(/ |\_|\-/).map(&:capitalize).join(" ") 
names_hash = Hash[stored_names.zip(stored_aliases)]
if name == "quit"
  names_hash.delete('Quit')
  names_hash.each do |x, y|
    p "#{y} is actually #{x}."
  end
  exit!
end
stored_aliases << alias_creator(name)
puts "-" * 50
puts "Lets make another. Type 'quit' when finished."
end
