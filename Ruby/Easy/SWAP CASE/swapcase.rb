File.open('in.txt').each_line do |line|
  puts line.swapcase
end
