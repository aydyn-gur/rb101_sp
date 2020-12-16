def palindrome?(string)
  string == string.reverse
end

palindrome?('madam')
palindrome?('Madam')
palindrome?("madam i'm adam")
palindrome?('356653')
palindrome?([1,2,3,3,2,1])