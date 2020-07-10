def average(arr)
  sum = 0
  arr.map do |idx|
    sum += idx
  end
  sum.to_f / arr.count
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
