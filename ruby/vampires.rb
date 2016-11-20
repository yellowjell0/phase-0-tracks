puts "How many employees will be processed today?"
employees = gets.to_i
def redflag
  p "Probably a Vampire"
end
allergies = ""
puts "Name your allergies"
finalizer = "done"
  while allergies != finalizer
allergies = gets.chomp
if allergies == "sunlight"
  redflag
end
end



  
 
def werewolf_processing_form
puts "What is your name?"
name = gets.chomp
if name == "Drake Cula"
  name = false
  elsif name == "Tu Fang"
  name = false
  else name == true
end
puts "How old are you? What year were you born?"
age = gets.to_i
year_born = gets.to_i
current_year = 2016
if year_born == current_year - age
  age = true
else
  age = false
end
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread_service = gets.chomp
if garlic_bread_service == "no"
  garlic_bread_service = false
  else garlic_bread_service == "yes"
    garlic_bread_service = true
  end
puts "Would you like to enroll in the companys health insurance?"
health_insurance = gets.chomp
  if health_insurance == "yes"
    health_insurance = true
    else health_insurance == "no"
    health_insurance = false
  end
  result = ""
    if name == false
      result = "Definitely a Vampire"
    elsif (age && garlic_bread_service) == true
      result = "Probably not a vampire"
    elsif health_insurance == true
      result = "Probably not a vampi
      re"
    elsif health_insurance == false
      result = "Probably a vampire"
    elsif (age && garlic_bread_service) == false
      result = "Probably a vampire"
    elsif (age && garlic_bread_service && health_insurance) == false
      result = "Almost certainly a vampire."
    else result = "inconclusive"
end
p result
end

while employees !=  0
employees -= 1
werewolf_processing_form
end
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
exit!

