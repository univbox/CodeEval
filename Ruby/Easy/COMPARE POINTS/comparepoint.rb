File.open('in.txt').each_line do |line|
  points = line.chomp.split(" ")
  output_string = ""
  dist_x = points[2].to_i - points[0].to_i
  dist_y = points[3].to_i - points[1].to_i
  if dist_y > 0
    output_string << "N"
  elsif dist_y < 0
    output_string << "S"
  end

  if dist_x > 0
    output_string << "E"
  elsif dist_x < 0
    output_string << "W"
  end

  if output_string.length == 0
    puts "here"
  else
    puts output_string
  end 

end
