def crunch(string)
  array = []
  
  string.chars.map do |char|
  array << char unless char == array.last
  end
  
  array.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
