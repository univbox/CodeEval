
File.open('in.txt').each_line do |line|
  line = line.rstrip!
  line = line.split(",")
  number = line[0].to_i.to_s(2)
  number = number.split(//)
  number.reverse!
  first_index = line[1].to_i
  second_index = line[2].to_i

  if number[first_index-1]==number[second_index-1]
    puts "true"
  else
    puts "false"
  end

end
