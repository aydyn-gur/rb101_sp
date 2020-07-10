def stringy(num, num2 = 1)
  arr = []
  loop do
    if num2 == 0
      arr << "0"
    else
      arr << "1"
    end

    num -= 1
    break if num == 0

    if num2 == 0
      arr << "1"
    else
      arr << "0"
    end

    num -=1
    break if num == 0
  end
  arr.join
end

puts stringy(6, 0)
puts stringy(9, 0)
puts stringy(4)
puts stringy(7)
