File.open('in.txt').each_line do |line|
  line = line.gsub(/\D/,' ')
  line = line.split(" ")
  dist_arr = []
  line.each do |dist|
    dist_arr << dist.to_i
  end

  dist_arr.sort_by!{|num| num}
  (dist_arr.reverse! << 0).reverse!
  output_string = []
  for i in (1..dist_arr.length-1)
    output_string << (dist_arr[i]-dist_arr[i-1])
  end
  puts output_string.join(",")

end
