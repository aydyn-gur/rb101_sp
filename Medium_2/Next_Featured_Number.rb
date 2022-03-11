=begin
Input - Integer
Output - Next featured number

Requirements- Num has to be multiple of 7
              Num has to be odd
              Num can not have same digit appear twice
              
Algo -  get multiple by Int / 7
        add 1 to multiple 
        Keep multiplying multiple by 7 until requirements are met
        when requirements are met return num * multiple 
=end

def featured(num)
  multiple = num / 7
  feature = nil
  
  loop do 
    multiple += 1
    feature = multiple * 7
    break if feature.odd? && feature.digits.length == feature.digits.uniq.length
    return 'There is no possible number that fulfills those requirements.' if multiple >= 1428571428
  end
  
  feature
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
