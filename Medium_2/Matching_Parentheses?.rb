def balanced?(string)
  parentheses = string.scan(/[()]/)
  if parentheses.first == ')' || parentheses.last == '('
    false
  elsif parentheses.count('(') != parentheses.count(')')
    false
  else
    true
  end
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
