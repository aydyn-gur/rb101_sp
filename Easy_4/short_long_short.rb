def short_long_short(string, string2)
  if string.length < string2.length
    "#{string}#{string2}#{string}"
  else
    "#{string2}#{string}#{string2}"
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"