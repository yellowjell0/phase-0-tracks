class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age

	def initialize(gender, ethnicity)
	  @ethnicity = ethnicity
	  @gender = gender
	  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	   @age = 0
		p "Initializing Santa instance ..."
	end

	def eat_milk_and_cookies(cookie)
		p "That was a good #{cookie} cookie!" 
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def celebrate_birthday
	  @age += 1
	end
	
	def get_mad_at(reindeer)
	  @reindeer_ranking.delete(reindeer)
	  @reindeer_ranking << reindeer
	end

end

genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "tri-gender", "hermaphodite", "flop-flop", "unsure", "sans-gender", "half-gender"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Marine Life", "Crab People", "Gnome", "Hot Cheeto(tm)", "Chamomile"]

1000.times do
  santa = Santa.new(genders.sample, ethnicities.sample)
   santa.age = rand(0..100)
  puts "This Santa is a representative of the #{santa.ethnicity} race, is #{santa.age} years young, and uses the #{santa.gender} bathroom."
end
  

# santa.celebrate_birthday
# santa.get_mad_at("Dasher")
# santa.age = 1
# santa.ethnicity
# santa.gender = "neutral"
