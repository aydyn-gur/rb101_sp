=begin
Input: 3 Integers
Output: Key

Requirements: Length of two shortest sides greater than length of longer side
              All sides must have lengths greater than 0
              
Algo :
Put all three nums in array and sort
Add first two nums together and check if longer than length of third num
Check if any nums == 0 and return invalid if yes
If all nums are the same return equilateral
If two are the same return isosceles
If none are the same return scalene
=end

def triangle(num1, num2, num3)
  tri = [num1, num2, num3].sort
  return :invalid if tri.any? {|num| num == 0}
  return :invalid if tri.take(2).inject(&:+) < tri.last
  return :equilateral if tri.uniq.length == 1
  return :isosceles if tri.uniq.length == 2
  return :scalene if tri.uniq.length == 3
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
