# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Require relative is a path from one directory to another. Requiring is pulling code from one place and adding it to another.
#
require_relative 'state_data'

class VirusPredictor


  attr_accessor :state, :population, :population_density
# taking arguments to be used in attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# pulls predicted deaths and speed of spread and combines the two
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# calculates deaths and based on arguments and prints out data
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end
# predicts the speed of spread based on the pop density and prints it in a string
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

def total_prediction
  STATE_DATA.each do |state, state_info|
    report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
    report.virus_effects
  end
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection SectionWhat are the differences between the two different hash syntaxes shown in the state_data file?
What does require_relative do? How is it different from require?
  Require relative connects by creating a path from one code of file to the other. 
  Require simply accesses data that was already there but that needed to be installed by your system.
What are some ways to iterate through a hash?
  hash.each do |key,value|
    puts "#{key} is followed by #{value}."
  end
  puts hash.each {|key, value| puts key, puts value}
end

When refactoring virus_effects, what stood out to you about the variables, if anything?
There are two methods in this method

What concept did you most solidify in this challenge?
Hash concepts within a class.
