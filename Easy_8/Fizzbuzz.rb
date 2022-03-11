def fizzbuzz(num1, num2)
  array = (num1..num2).to_a
  result = array.map do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 3 == 0
      'Fizz'
    elsif num % 5 == 0
      'Buzz'
    else
      num
    end
  end
  result.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
