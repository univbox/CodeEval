File.open('in.txt').each_line do |line|
  str = line.split(" ")[0]
  num = line.split(" ")[1]

  length = str.length

  for i in (0..length-1)
    if num[i]==1.to_s
      str[i]=str[i].capitalize
    end
  end
  puts str
end
