def block_word?(string)
  blocks = {'B' => 'O', 'X' => 'K', 'D' => 'Q', 'C' => 'P', 'N' => 'A',
            'G' => 'T', 'R' => 'E', 'F' => 'S', 'J' => 'W', 'H' => 'U',
            'V' => 'I', 'L' => 'Y', 'Z' => 'M'}

  string.upcase.chars.each do |letter|
    if blocks.include?(letter) && string.include?(blocks[letter])
      return false
    elsif blocks.has_value?(letter) && string.include?(blocks.key(letter))
      return false
    end
  end
  return true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
