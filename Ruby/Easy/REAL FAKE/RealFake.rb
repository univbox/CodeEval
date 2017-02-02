@array = []
def calcTotal
  total = 0

  @array.each_with_index{|val,index|
    val = val.to_i
    if index%2 == 0
      total += val*2
    else
      total += val
    end
  }
  total%10==0 ? "Real" : "Fake"
end

#File.open(ARGV[0]).each_line do |line|
File.open('in.txt').each_line do |line|
  @array = line.split(" ")
  @array = @array.join
  @array = @array.split(//)

  puts calcTotal
end
