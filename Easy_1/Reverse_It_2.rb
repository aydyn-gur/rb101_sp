def reverse_words(string)
  new = []
  
  string.split.each do |word|
    if word.size >= 5
      word.reverse!
    else
      word
    end
    new << word
  end
 
  new.join(" ")
end

puts reverse_words('Professional')
puts reverse_words('Walk around the block')
puts reverse_words('Launch School')
