puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

real_tip = (bill * (tip/100).round(2))
total = bill + real_tip.round(2)

puts "The tip is $#{format("%.2f", real_tip)}"
puts "The total is $#{format("%.2f", total)}"