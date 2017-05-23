File.open('in.txt').each_line do |line|
  line.chop!
  new_line = line.split(",")
  string = new_line[0]
  string.reverse!
  findChar = new_line[1]
  arr = string.split("")
  if arr.index(findChar)
    puts string.length - arr.index(findChar) - 1
  else
    puts "-1"
  end 
end
