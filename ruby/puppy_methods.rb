class Puppy

  def initialize
    puts "initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end

  def speak(int)
    puts "Howl" * int
  end

  def rollover
    puts "Rollover"
  end

  def dog_years (x)
    puts x*7
  end
  
  def fetch_news 
    puts "Here's the paper"
  end
end


puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.rollover
puppy.dog_years(4)
puppy.fetch_news

class CookingDinner

  def initialize(ingredient)
    puts "Please prepare the table."
  end

  def preparation(ingredient)
    puts "The #{ingredient} have been chopped up."
  end

  def boil(ingredient)
    puts "The #{ingredient} have come to a boil."
  end

  def roasted(ingredient, int)
    puts "#{ingredient} have been prepared to #{int} degrees."
  end

end

cooking_dinner = CookingDinner.new("carrots")
cooking_dinner.preparation("carrots")
cooking_dinner.boil("onions")
cooking_dinner.roasted("potatoes",208)

cooking_array = []
ingredients_array = ["Cheeses", "Potatoes", "Cauliflower", "Meats"]

50.times do 
  cooking_array << cooking_dinner = CookingDinner.new("tomatoes")
end

cooking_array.each do |x| 
  x.boil(ingredients_array.sample)
  x.preparation(ingredients_array.sample)
  x.roasted(ingredients_array.sample, rand(200..500))
end