File.open('in.txt').each_line do |line|
  new_line = line.split(" ")
  new_line.each do |elem|
    count =1
    elem.each_char do |char|
      if count == 1
        char.upcase!
        count += 1
      end
      print char
    end
  end
  #puts new_line
end
