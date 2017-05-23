File.open('in.txt').each_line do |line|
  count = 0
  for i in (0..100)
    sum = 0
    line.each_char do |num|
      sum += num.to_i ** 2
    end
    line = sum.to_s
    if line == "1"
      break
    end
  end

  if line == "1"
    puts "1"
  else
    puts "0"
  end 

end
