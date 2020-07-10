def count_occurrences(array)
  occurences = {}

  array.each do |element|
    element.downcase!
  end

  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |element, count|
    puts "#{element} => #{count}"
  end

end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck', 'Motorcycle', 'TRUCK',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv', 'SUV'
]

count_occurrences(vehicles)
