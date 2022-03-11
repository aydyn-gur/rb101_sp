def letter_percentages(string)
  percentages = {}
  lowercase = string.scan(/[a-z]/)
  uppercase = string.scan(/[A-Z]/)
  neither = string.scan(/[^A-Za-z]/)
  percentages[:lowercase] = ((lowercase.length.to_f / string.length) * 100).round(1)
  percentages[:uppercase] = ((uppercase.length.to_f / string.length) * 100).round(1)
  percentages[:neither] = ((neither.length.to_f / string.length) * 100).round(1)
  percentages
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')
