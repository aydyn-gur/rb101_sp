=begin
Input: Array
Output: Array with elements shifted
Rules: Original array should not be mutated

Algo:
- Create another variable and assign to array
- Remove first element
- Append to end of array
- Return array
=end

def rotate_array(array)
  rotation = array.clone
  first_element = rotation.shift
  rotation.push(first_element)
  rotation
end

def rotate_string(string)
  rotate_array(string.chars)
end

def rotate_integer(int)
  rotate_string(int.to_s)
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]     # => true

p rotate_string('This is a test')
p rotate_integer(12345)
