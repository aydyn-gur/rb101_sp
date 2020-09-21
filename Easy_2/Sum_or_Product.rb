puts "PLease enter an integer greater than 0:"
num = gets.chomp.to_i
puts "Enter 's' to compute the sum, 'p' ro compute the product."
answer = gets.chomp

if answer == "s"
  total = (1..num).inject(:+)
  puts "The sum of the integers between 1 and #{num} is #{total}"
else
  total = (1..num).inject(:*)
  puts "The product of the integers between 1 and #{num} is #{total}"
end