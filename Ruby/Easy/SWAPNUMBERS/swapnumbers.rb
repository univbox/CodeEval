File.open('in.txt').each_line do |line|
  words = line.chomp.split(" ")
  words.each do |word|
    #first = word[0]
    #last = word[-1]
    word[0],word[-1] = word[-1],word[0]

    #word[0] = last
    #word[-1] = first
  end
  puts words.join(" ")
end
