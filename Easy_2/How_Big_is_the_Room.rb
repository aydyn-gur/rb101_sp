puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area = (length * width).round(2)
puts "The area of the room is #{area} square meters (#{(area * 10.7639).round(2)} square feet)."

# Further Exploration
SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENT = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centimeters = (square_feet * SQFEET_TO_SQCENT).round(2)

puts "The area of the room is #{square_feet} square feet, 
#{square_inches} square inches, and #{square_centimeters} square centimeters."