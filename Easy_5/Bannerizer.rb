def print_in_box(string)
  puts "+#{'-' * (string.size + 2)}+"
  puts "|#{' ' * (string.size + 2)}|"
  puts "| #{string} |"
  puts "|#{' ' * (string.size + 2)}|"
  puts "+#{'-' * (string.size + 2)}+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')