def swapcase(string)
  swapped = string.chars.map do |letter|
    if letter =~ /[a-z]/
      letter.upcase
    else
      letter.downcase
    end
  end
  swapped.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
