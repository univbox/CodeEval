File.open('in.txt').each_line do |line|
  if line.to_i % 2 == 0
    puts "1"
  else
    puts "0"
  end
end
