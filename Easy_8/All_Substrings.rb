def substrings(string)
  string_arr = string.chars
  new_substring = []
  
  while string_arr != []
    count = ''
    string_arr.map { |letter| new_substring << count += letter }
    string_arr.shift
  end
  new_substring
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
