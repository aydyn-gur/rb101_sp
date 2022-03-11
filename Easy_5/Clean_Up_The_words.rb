def cleanup(string)
  string.gsub(/[^a-z]/, " ").squeeze(" ")
end

p cleanup("---what's my +*& line?")