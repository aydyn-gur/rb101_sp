def multisum(num)
  arr = []
  while num > 0
    arr << num if (num % 3 == 0) || (num % 5 == 0)
    num -= 1
  end
  arr.inject(:+)
end

p multisum(3)
p multisum(5)
p multisum(10)
p multisum(1000)
