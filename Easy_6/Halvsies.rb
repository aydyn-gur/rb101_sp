def halvsies(arr)
  arr2 = []
  arr3 = []
  
  arr.each_with_index do |num, idx|
    if arr.length.odd?
      idx < (arr.length / 2 + 1) ? arr2 << num : arr3 << num
    else
      idx < (arr.length / 2) ? arr2 << num : arr3 << num
    end
  end
  
  [arr2, arr3]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]