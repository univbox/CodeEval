def find_highest(new_line)
  #p line
  new_line[0] = new_line[0].to_s
  first_line = new_line[0].split(" ")
  highest_array = Array.new(first_line){|val|
  val.to_i
}
  new_line.each do |elem|
    elem = elem.split(" ")
    elem.each_with_index do |val,index|
      val = val.to_i
      highest_array[index] = highest_array[index].to_i
      val > highest_array[index] ? highest_array[index] = val : next
    end
  end
  #puts highest_array.join(" ")
end



File.open('in.txt').each_line do |line|
  #line = line.rstrip!.split(" | ") # Error
  new_line = line
  new_line = line.rstrip
  x = new_line.split(" | ")
  p x
  #new_line = line.rstrip!.split("|")
  find_highest x
end
