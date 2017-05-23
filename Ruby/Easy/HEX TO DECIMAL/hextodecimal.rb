File.open('in.txt').each_line do |line|
  puts line.to_i(16).to_s(10)
end
