@lines = {}
@repeat = 0

def store(line)
  #new_line = line.rstrip
  new_line = line.split(//)
  length = new_line.length
  #length = line.bytesize
  @lines[line] = length
end

def printString
  @lines =  @lines.sort_by {|key,value| value}.to_h
  strings = @lines.keys

  @repeat.times do
    puts strings.pop
  end

end


File.open('in.txt').each do |line|
  line.rstrip!
  if @repeat==0
    @repeat = line.to_i
  end
  store line
end

printString
