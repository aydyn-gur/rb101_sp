def buy_fruit(array)
  fruits = []
  array.map do |arr|
    arr[1].times {fruits << arr[0]}
  end
  fruits
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
