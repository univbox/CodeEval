count = 0
File.open('in.txt').each_line do |line|
  count += line.bytesize
end

puts count
