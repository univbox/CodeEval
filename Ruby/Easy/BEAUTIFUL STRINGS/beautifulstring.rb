@alpha = Hash.new("")

def insertAlpha(character)
  if @alpha.has_key?(character)
    @alpha[character] += 1
  else
    @alpha[character] = 1
  end
end

File.open('in.txt').each_line do |line|
  #line = line.gsub(/\W+/,'')
  line = line.gsub(/[^a-zA-Z]/,'')
  #puts line
  line = line.downcase
  line.each_char do |char|
    insertAlpha(char)
  end
  @alpha = @alpha.sort_by{|key, value| -value}.to_h
  #puts @alpha
  sum = 0
  i = 0
  @alpha.each do |key,value|
    sum += value * (26-i)
    i += 1
  end
  @alpha = {}
  puts sum
end
