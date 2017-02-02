File.open('in.txt').each_line do |line|
  line = line.rstrip!.split(//)
  result = 0
  line.each{|num|
  result += num.to_i
  }
  puts result
end
