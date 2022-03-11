def triangle(num)
  counter = 1
  while num != 0
    puts (' ' * num) + ('*' * counter)
    num -= 1
    counter += 1
  end
end

triangle(5)