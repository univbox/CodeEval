File.open('in.txt').each_line do |line|
  line.chop!

  new_line = line.split(";")

  intersection = []
  first_str = new_line[0]
  second_str = new_line[1]
  first_arr = first_str.split(",")
  second_arr = second_str.split(",")

  first_arr.each do |num|
    if second_arr.include?(num)
      intersection << num
    end
  end
  str = ""
  if intersection == []
  else
    intersection.each do |char|
      str += char + ","
    end
    str.chop!
  end
  puts str
end
