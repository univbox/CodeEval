def SumOfHex(arr)
  sum = 0
  arr = arr.split(" ")
  arr.each do |val|
    val = val.to_i(16)
    sum += val
  end
  sum
end

def SumOfBin(arr)
  sum = 0
  arr = arr.split(" ")
  arr.each do |val|
    val = val.to_i(2)
    sum += val
  end
  sum
end

File.open('in.txt').each_line do |line|
  line = line.rstrip
  line = line.split(" | ")

  if SumOfHex(line[0]) <= SumOfBin(line[1])
    puts "True"
  else
    puts "False"
  end
end
