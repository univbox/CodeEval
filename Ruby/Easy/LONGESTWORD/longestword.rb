File.open('in.txt').each_line do |line|
  new_line = line.split(" ")
  longest_word = ""
  longest_count = 0
  new_line.each do |elem|
    if(longest_count < elem.length)
      longest_count = elem.length
      longest_word = elem
    end
  end
  puts longest_word
end
