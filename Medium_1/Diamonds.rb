def diamond(num)
  size = (1..num).to_a.select{|int| int.odd?}
  stars = size.map { |multiple| '*' * multiple }
  space = stars.map { |star| (num - star.length) / 2}
  0.upto(stars.size - 1) do |num| 
    puts ' ' * space[num] + stars[num]
  end
  1.upto(stars.size - 1) do |num| 
    puts ' ' * space.reverse[num] + stars.reverse[num]
  end
end

diamond(1)
diamond(3)
diamond(9)
