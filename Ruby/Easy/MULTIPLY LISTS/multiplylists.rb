File.open('in.txt').each_line do |line|
  line = line.chomp.split("|")
  length = line[0].split(" ").length
  for i in (0..length-1)
    sum = 1
    line.each do |num|
      num = num.split(" ")
      sum *= num[i].to_i
    end
    print sum.to_s + " "
  end
  puts " "
end
