=begin
Input - String
Output - Same string with int instead of letters

Algo:
- Create hash with number strings converted to digits
- Split String into array
- If element is in hash then use value of that hash
- If not then return the same word
- Return String
=end

def word_to_digit(string)
  convert = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 
              'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 
              'eight' => '8', 'nine' => '9' }

  convert.keys.each do |word|
    string.gsub!(/\b#{word}\b/, convert[word])
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
