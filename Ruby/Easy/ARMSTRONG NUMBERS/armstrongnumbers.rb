File.open('in.txt').each_line do |line|
  pownum = line.length-1
  count = 0
  line.each_char do |elem|
    count += elem.to_i**pownum
  end

  if count == line.to_i
    puts "True"
  else
    puts "False"
  end
end
