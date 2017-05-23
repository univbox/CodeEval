File.open('in.txt').each_line do |line|
  words = line.chomp.split("|")[0]
  sequence = line.chomp.split("| ")[1]
  sequence = sequence.split(" ")
  sequence.each do |index|
    print words[index.to_i-1]
  end
  puts ""
end
