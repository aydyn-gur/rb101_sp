def is_odd?(num)
  if num % 2 != 0
    true
  else
    false
  end
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

puts "-------"

# Further Exploration
def remainder(num)
  num.remainder(2) != 0
end

puts remainder(2)
puts remainder(5)
puts remainder(-17)
puts remainder(-8)
puts remainder(0)
puts remainder(7)
