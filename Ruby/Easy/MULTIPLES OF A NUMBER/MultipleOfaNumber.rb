File.open('in.txt').each_line do |line|
  line = line.split(",")
  first = line[0].to_i
  second = line[1].to_i
  i = 2
  target = second
  while first > target
    target = second * i
    i += 1
  end
  puts target
end
