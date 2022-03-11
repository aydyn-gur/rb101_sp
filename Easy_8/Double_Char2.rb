def double_consonants(string)
  consonants = ('a'..'z').to_a
  consonants.delete_if { |letter| letter == 'a' || letter == 'i' || letter == 'e' || letter == 'u' || letter == 'o'}
  new_string = ''
  string.chars.each do |letter|
      if consonants.include?(letter.downcase)
        new_string << letter + letter
      else
        new_string << letter
      end
  end
  new_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
