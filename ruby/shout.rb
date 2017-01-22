
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
# ":D <3 "  + words + " :D <3" + "!!!"
#   end
# end


# puts Shout.yell_angrily("WTF?")
# puts Shout.yelling_happily("I Love You")


module Shout
    def yell_angrily(angry_words)
      "%$#@ " + angry_words + " &!@@!"
    end
    
    def yell_happily(happy_words)
      "<3 >>--> <3 " + happy_words + " <3 >>--> <3"
    end     
end

class Relationships
  include Shout
    def initialize
      "Initializing relationship class..."
    end
    
    def good_relationship
      "Less likely to say things like #{yell_angrily('I HATE YOU')} and more likely to say things like include Shout}."
    end
    
    def bad_relationship
      "Constantly saying things like #{yell_angrily('YOU ARE SLOWLY KILLING ME!!')} and very seldom saying things like #{yell_happily('I AM SO HAPPY TO SEE YOU')}."
    end
end

class Sensitivity_training
  include Shout
    def initialize
    "Initializing sensitivity training class"
    "Here at Far Away Greeters(tm), we strive for the loudest, most welcome greets possible."
    end
    
    def what_to_do
      "Feel free to shout words like #{yell_happily('WELCOME')}, and #{yell_happily('HOPE YOU HAVE A NICE DAY')}."
    end
    
    def what_not_to_do
      "Please refrain from shouting expletives, things like #{yell_angrily('YOU SUCK')}, and #{yell_angrily('BEAT IT')}.
    end
  end
  
relationship = Relationships.new
relationship.good_relationship
relationship.bad_relationship

sensitivity_training = Sensitivity_training.new
sensitivity_training.what_to_do
sensitivity_training.what_not_to_do