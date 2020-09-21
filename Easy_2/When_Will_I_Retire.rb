puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like to retire?"
retire = gets.chomp.to_i

year = Time.now.year 

puts "It's #{year}. You will retire in #{year + retire - age}. 
You only have #{retire - age} years of work to go!"