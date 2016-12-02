class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(x)
    x = 'Woof'*x
  end
  def roll_over
    p 'Rolls Over'
  end
  def dog_years(x)
    y = ""
    y = x * 7
    p y
  end
  def chase_your_tail
    p 'Chases tail'
  end
  def initialize
    p 'Initializing new puppy instance ...'
  end
 
 end
instance_for_fetch = Puppy.new
instance_for_fetch.fetch('ball')
instance_for_fetch.speak(10)
instance_for_fetch.roll_over
instance_for_fetch.dog_years(5)

class Frustration_assistant

  def initialize
    p 'You can do it!'
  end
  def need_help
    p 'Google it!'
  end
  def cant_focus
    p 'Drink coffee!'
    end
  end
  
frustration_assistant_array = []
    i = 0
  loop do
    i += 1
frustration_assistant_array.push Frustration_assistant.new
break if i == 50
  end
  frustration_assistant_array.each do |x|
   p x.need_help
   p x.cant_focus
    
  end