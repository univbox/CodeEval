File.open('in.txt').each_line do |line|
  line.chop!
  n = line.split(",")[0]
  m = line.split(",")[1]
  puts n.to_i % m.to_i
end
