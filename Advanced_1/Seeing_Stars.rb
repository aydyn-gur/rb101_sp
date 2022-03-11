def star(num)
  mark = '*'
  space = ' ' * (num / 2)
  
  until space == ''
    space = ' ' * (space.length - 1)
    puts "#{mark}#{space}#{mark}#{space}#{mark}".center(num)
  end
  
  puts mark * num
  
  until space.length == num / 2
    puts "#{mark}#{space}#{mark}#{space}#{mark}".center(num)
    space += ' '
  end
end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  * 

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
