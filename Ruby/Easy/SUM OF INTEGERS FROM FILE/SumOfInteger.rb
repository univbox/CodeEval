@total = 0
File.open('in.txt').each_line do |line|
  @total += line.to_i
end
puts @total
