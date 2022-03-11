require 'date'

def friday_13th(year)
  occurences = 0
  month = 1
  until month > 12
    occurences += 1 if Date.new(year, month, 13).friday?
    month += 1
  end
  occurences
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
