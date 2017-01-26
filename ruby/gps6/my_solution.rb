# Virus Predictor

# I worked on this challenge [with: Chase].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Communicates with another file in the same directory
# Require is a built in ruby method that you can call to pull in files, gems, modules, etc

require_relative 'state_data'

class VirusPredictor
attr_reader :state, :population_density, :population




  # Taking 3 arguments & creating 3 instance variables for the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Running two class methods and printing the data

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # Using a conditional to determine the amount that should be returned
 
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
     x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end
    number_of_deaths = (@population * x).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Basically same functionality as predicted deaths with different arguments and data values

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, population|
  new_state = VirusPredictor.new(state,population[:population_density],population[:population]).virus_effects
end

#=======================================================================
# What are the differences between the two different hash syntaxes shown in the state_data file?
#There are a string hash and symbol hash. Because some states have to be written with spaces, the proper syntax for that hash is a string.


# What does require_relative do? How is it different from require?
# Require_relative brings data into ruby with a file, while require brings in data, modules and gems that has or will been installed and is accessible within your system.

# What are some ways to iterate through a hash?
# Block iteration and hash functions like .each using a key and value as parameters. 

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Using instance variables as arguments with the two methods being called in virus_effects. We altered the instance variables to attr_readers and omitted the arguments.

# What concept did you most solidify in this challenge?
# The usefulness of attr_readers to create more readable, DRY code. 


