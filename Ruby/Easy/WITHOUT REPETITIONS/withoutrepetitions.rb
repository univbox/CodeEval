File.open('in.txt').each_line do |line|
  words = line.split(" ")
  output = []
  words.each do |word|
    for i in (0..word.length-1)
      unless word[i] == word[i+1]
        output<<word[i]
      end
    end
    output<<" "
  end
  puts output.join("")
end
