File.open('in.txt').each_line do |line|
  number = line.split(" ")[0]
  pattern = line.split(" ")[1]
  plus_operator = pattern.index("+")
  minus_operator = pattern.index("-")
  if plus_operator
    puts number[0..plus_operator-1].to_i + number[plus_operator..-1].to_i
  else
    puts number[0..minus_operator-1].to_i - number[minus_operator..-1].to_i
  end

end
