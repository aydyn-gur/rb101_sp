def bubble_sort!(array)
  array.length.times do
    array.each_with_index do |num, idx|
      unless array[idx + 1] == nil
        array[idx], array[idx + 1] = array[idx + 1], array[idx] if num > array[idx + 1]
      end
    end
  end
  array
end

array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
