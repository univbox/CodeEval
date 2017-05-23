File.open('in.txt').each_line do |line|
  line.chop!
  days = line.split(";")[0].to_i
  earns = line.split(";")[1]
  earn_arr = earns.split(" ")
  max_sum = 0
  total_day = earn_arr.length
  for i in (0..total_day-days)
    sum = 0
    for a in (i..i+days-1)
      sum += earn_arr[a].to_i
    end
    if sum > max_sum
      max_sum = sum
    end
  end
  puts max_sum
end
