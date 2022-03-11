def repeater(string)
  new_string = ''
  string.chars.each { |letter| new_string << letter + letter}
  new_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
