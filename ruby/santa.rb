class Santa
    attr_accessor :gender
    attr_reader :age, :ethnicity
		def initialize(gender,ethnicity)
		puts "Initializing Santa Instance"
	  @gender = gender
	  @ethnicity = ethnicity
	  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	  @age = 0
	end
	  def speak
		puts "Ho, Ho, Ho. Happy Holidays, #{@ethnicity}, #{@gender}."
	end
	  def eat_milk_and_cookies(cookie_type)
		puts 'that was a good #{cookie_type}.'
	end
	  def celebrate_birthday
	   # puts "Santa is now #{@age + 1}"
	  end
	  def get_mad_at(name)
	    @reindeer_ranking.delete(name)
	    @reindeer_ranking << name
	    p @reindeer_ranking
	  end
	end
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

genders = ["unsure", "ever-changing", "trans", "reverse-trans","agender","female","Bi-Gender","male","female","gender fluid","N/A", "He-She", "She-He"]
ethnicities = ["rainbow", "dark-elf", "sea-foam", "Korean", "Black", "Latino","white","Japanese", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Gargoyle", "Wizard"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
  puts "There are now #{santas.length} Santas."
end

Santa.new("Male", "Black").celebrate_birthday
Santa.new("Bi-Gender", "Asian").get_mad_at("Rudolph")
culauze = Santa.new("Male", "Green")
culauze.gender = "Everything"
puts "Culauze is #{culauze.ethnicity}, and her age is #{culauze.age}."

10000.times do |i|
  Santa.new(genders.shuffle[i],ethnicities.shuffle[i])
  puts "This Santa is a proud, #{genders.shuffle[i[rand(10000)]]}, #{ethnicities.shuffle[i[rand(10000)]]}, is proudly #{rand(140)} and ready to spread some joy!."
end
  
  
