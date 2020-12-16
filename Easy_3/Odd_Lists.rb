def oddities(array)
  new_array = []
  count = 0
  while count < array.count
    new_array << array[count]
    count += 2
  end
  new_array
end

def even(array)
  new_array = []
  count = 1
  while count < array.count
    new_array << array[count]
    count += 2
  end
  new_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])

p even([2, 3, 4, 5, 6])
p even([1, 2, 3, 4, 5, 6])
p even(['abc', 'def'])
p even([123])
p even([])