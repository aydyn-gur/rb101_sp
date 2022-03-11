def merge(arr1, arr2)
  new_array = []
  counter = 0
  counter2 = 0
  arr1.size < arr2.size ? length = arr2.size : length = arr1.size
  
  until counter == length || counter2 == length
    if arr2[counter2] == nil
      new_array << arr1[counter]
      counter += 1
    elsif arr1[counter] == nil
      new_array << arr2[counter2]
      counter2 += 1
    elsif arr1[counter] <= arr2[counter2]
      new_array << arr1[counter]
      counter += 1
    else
      new_array << arr2[counter2]
      counter2 += 1
    end
  end
  new_array.concat(arr2[counter2..-1])
  new_array.concat(arr1[counter..-1])
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
