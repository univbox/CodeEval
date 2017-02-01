@array = []

def swap
  (0..@array.length-2).each do |index|
    if @array[index].to_i > @array[index+1].to_i
      @array[index],@array[index+1] = @array[index+1],@array[index]
      break
    end
  end
end

File.open('in.txt').each_line do |line|
  @array = []
  line = line.split(' ')
  line.each do |x|
    @array << x
  end
  #p @array
  iter = @array.pop.to_i
  @array.pop

  iter.times do
    swap
  end
  puts @array.join(" ")
end
