book = File.read("/home/ec2-user/environment/pg84.txt")
sentences = book.split(/\.|\?|!/)
sentences.sort_by! { |sentence| sentence.length }
length = sentences.last.split.length
puts "The longest sentence is '#{sentences.last}' and is #{length} words long"
