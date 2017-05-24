File.open('in.txt').each_line do |line|
  num = line.split(" ").length
  num = (num**0.5).to_i

  elements = line.split(" ")
  arr = Array.new(num){Array.new(num)}

  count = 0
  for i in (0..num-1)
    for j in (0..num-1)
      arr[i][j] = elements[count]
      count += 1
    end
  end

  arr2 = Array.new(num){Array.new(num)}
  for i in (0..num-1)
    for j in (0..num-1)
      arr2[i][j] = arr[num-1-j][i]
    end
  end

  str = ""
  for i in (0..num-1)
    for j in (0..num-1)
      str += arr2[i][j].to_s + " "
    end
  end
  puts str
end
