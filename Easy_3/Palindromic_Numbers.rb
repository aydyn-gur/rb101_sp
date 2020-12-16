def palindromic_number?(int)
  int.to_s.reverse == int.to_s
end

p palindromic_number?(34543)
p palindromic_number?(123210)
p palindromic_number?(22)
p palindromic_number?(5)