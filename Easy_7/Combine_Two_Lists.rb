=begin
Input: Two Arrays
Output: One Array with elements in alteration

run a loop with a counter 
Use the counter as an index for both the arrays
put those in a new array
return new array
=end

def interleave(arr1, arr2)
  new_arr = []
  count = 0
  
  while count != arr1.length
    new_arr << arr1[count]
    new_arr << arr2[count]
    count += 1
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']