def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.any? { |angle| angle == 0 }
  return :invalid if angles.inject(&:+) != 180
  return :acute if angles.all? { |angle| angle < 90 }
  return :obtuse if angles.any? { |angle| angle > 90 }
  return :right if angles.include?(90)
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
