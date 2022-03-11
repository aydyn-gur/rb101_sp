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

def palindromes(string)
  substring = substrings(string)
  substring.select do |word| 
    next if word.size == 1
    word == word.reverse
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
