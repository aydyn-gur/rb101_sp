def max_rotation(num)
  length = num.to_s.length
  while length > 0
    num = rotate_rightmost_digits(num, length)
    length -= 1
  end
  num
end

def rotate_rightmost_digits(num, count)
  array = num.to_s.chars
  element = array.delete_at(-count)
  array.push(element).join.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
