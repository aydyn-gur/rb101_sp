def transpose(matrix)
  array = [[], [], []]
  matrix.each do |num|
    array[0] << num[0]
    array[1] << num[1]
    array[2] << num[2]
  end
  array
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
