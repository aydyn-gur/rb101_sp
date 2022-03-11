def center_of(string)
  middle = string.length / 2
  if string.length.odd?
    string[middle]
  else
    string[middle - 1] + string[middle]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
