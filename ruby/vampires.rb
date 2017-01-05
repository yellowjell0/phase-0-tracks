puts "How many employees will be processed today?"
number_of_employees = gets.to_i

until number_of_employees === 0


puts "What is your full name?"
name = gets.chomp.split.map(&:capitalize).join(' ')
if name == "Drake Cula"
  name = false 
  elsif name == "Tu Fang"
  name = false
  else name == true
  end

puts "What is your age and what year were you born?"

age = gets.to_i
year_born = gets.to_i
current_year = 2016 || 2017
  if current_year == year_born + age
    age = true
  else age == false
  end


puts "Our company cafeteria serves garlic bread. Should we order some for you? (Please enter 'yes' or 'no')"
garlic_bread = gets.chomp
  if garlic_bread == "yes"
      garlic_bread = true
   elsif garlic_bread == "no"
      garlic_bread = false
    end

puts "Would you like to enroll in the company’s health insurance? (Please enter 'yes' or 'no')"
health_insurance = gets.chomp 
  if health_insurance == "yes"
      health_insurance = true
    elsif health_insurance == "no"
      health_insurance = false
    end


puts "Do you have any allergies? Type 'done' when finished."
  exit_allergies = false
  conclusion = false
  
until exit_allergies == true
  allergies = gets.chomp
      if allergies == "sunshine"
      conclusion = true
      exit_allergies = true
      elsif allergies == "done"
      exit_allergies = true
    end
   end
   

if conclusion == true
    puts "Probably A Vampire"
  elsif name == false
  puts "Definitely a vampire."
  elsif health_insurance || (age && garlic_bread) == true
    puts "Probably not a Vampire."
  elsif health_insurance || (age && garlic_bread) == false
    puts "Probably a vampire."
  elsif age && (garlic_bread && health_insurance) == false
    puts "Almost certainly a vampire."
  else puts "Results Inconclusive"
    end

  
number_of_employees -= 1
end
