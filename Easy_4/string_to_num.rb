DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '10' => 10
}

def string_to_integer(string)
  digits = string.chars.map { |num| DIGITS[num] }
  
  value = 0
  digits.each { |num| value = 10 * value + num }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

HEX_DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, "A" => 10,
  'B' => 11, 'C' => 12, 'D' => 13, 'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(string)
  digits = string.upcase.chars.map { |num| HEX_DIGITS[num] }
  
  sum = 0
  exponent = 0
  digits.reverse.each do |num| 
    sum += num * (16 ** exponent)
    exponent += 1
  end
  sum
end 

p hexadecimal_to_integer('4D9f') == 19871
