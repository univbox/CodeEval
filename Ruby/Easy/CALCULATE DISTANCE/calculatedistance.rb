File.open('in.txt').each_line do |line|
  elem = line.chomp.gsub(/[,()]/," ")
  elem = elem.split(" ")
  x = elem.at(0).to_i - elem.at(2).to_i
  y = elem.at(1).to_i - elem.at(3).to_i

  #puts (x**2+y**2).type
  puts ((x**2+y**2)**0.5).to_i
end
