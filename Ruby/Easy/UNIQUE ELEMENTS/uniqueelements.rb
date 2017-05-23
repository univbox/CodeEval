File.open('in.txt').each_line do |line|
  arr = []
  line.strip!
  new_line = line.split(",")
  new_line.each do |num|
    if !arr.include?(num)
      arr << num
    end
  end
  str = ""
  arr.each do |char|
    str += (char+",")
  end
  puts str.chop

end
