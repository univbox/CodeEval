File.open('in.txt').each_line do |line|
  num_arr = [0,0,0,0,0,0,0,0,0,0]
  line.chop!
  numbers = line.split("")
  numbers.each do |num|
    num_arr[num.to_i] += 1
  end

  right = 1
  position = 0
  numbers.each do |num|
    if num != num_arr[position.to_i].to_s
      right = 0
    end
    position += 1
  end
  puts right
end
