@array = []
@order = []

def refineLine(line)
  @array = []
  @array = line.split(";")
  key = @array[1].to_s
  key = key.split("\n")
  key = key[0].to_s
  #print key
  @array = @array[0].to_s
  @array = @array.split(" ")

  @order = key.split(" ")
end

def arrange
  length = @array.length
  remainArray = Array.new(length){|index| index+1}
  new_string = []
  @order.each_with_index do |val,index|
    val = val.to_i
    new_string[val-1] = @array[index]
    remainArray.delete val
  end
  #p remainArray

  remainArray.each do |val|
    new_string[val-1] = @array[-1]
  end
  #puts new_string
  puts new_string.join(" ")
end

#File.open(ARGV[0]).each_line do |line|
File.open('in.txt').each_line do |line|
  refineLine line
  arrange
end
