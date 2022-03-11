def fibonacci(num)
  array = [1, 1]
  return 1 if num == 1 || num == 2
  array << (array[-1] + array[-2]) until num == array.length 
  array[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
