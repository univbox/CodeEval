File.open('in.txt').each_line do |line|
  numbers = line.split(" : ")[0]
  swap_pattern = line.chomp.split(" : ")[1]
  arr_number = numbers.split(" ")
  arr_swap = swap_pattern.split(", ")

  arr_swap.each do |index|
    index = index.split("-")
    first,second = index[0].to_i,index[1].to_i
    arr_number[first],arr_number[second] = arr_number[second],arr_number[first]
  end
  puts arr_number.join(" ")
end
