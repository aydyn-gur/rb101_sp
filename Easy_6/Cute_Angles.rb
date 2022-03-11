# Input - Integer
# Output - String
# Algorithm: 
  # Convert to float
  # Take num after decimal point and multiply by 60
  # Save as variable Minutes
  # Take num after decimal point and multiply by 60
  # Save as varibale seconds
  # Format code to look like %(degree°min'sec") 
DEGREE = "\xC2\xB0"

def dms(degree)
  actual_degree = degree.floor
  num = degree.to_f - degree.to_i
  minutes = num * 60
  seconds = (minutes - minutes.to_i) * 60 
  
  format(%(#{actual_degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")