File.open('in.txt').each_line do |line|
  words = line.chomp.split(" ")
  puts words[-2]
end 
