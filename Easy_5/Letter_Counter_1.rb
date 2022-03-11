=begin
Input = String
Output = Hash with integers

Key should be size of word
Value is how many times that size is present
If string is empty produce empty hash
Word is anything that does not include a space

create empty hash called size_of_words
seperate string into an array
iterate through array and take into account the size of each word and how many occurences of that size there are 
put those numbers into a key value pair 
return hash
=end

def word_sizes(string)
  size_of_words = Hash.new(0)
  
  string.split.each do |word|
    size_of_words[word.size] += 1
  end
  size_of_words
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}