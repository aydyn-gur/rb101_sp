=begin
Input: String
Output: New String with staggered capitalization

Algo: 
-create counter == 0
-loop over string
-Use the counter as an index for the string
- if string is a number leave it alone and add to the counter
- if counter is even then capitalize
- if odd lowercase
=end

def staggered_case(string)
  new_string = ""
  counter = 0
  
  while counter != string.length
    if counter.even?
      new_string << string[counter].upcase
      counter += 1
    elsif counter.odd?
      new_string << string[counter].downcase
      counter += 1
    end
  end
  new_string
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
