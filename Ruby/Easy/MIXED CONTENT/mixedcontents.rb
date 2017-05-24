File.open('in.txt').each_line do |line|
  interger_line = line.gsub(/\D/,' ')
  interger_line = interger_line.split(" ").join(",")
  string_line = line.gsub(/[0-9,]/,' ').split(" ").join(",")
  if string_line.empty?
    puts interger_line
  elsif interger_line.empty?
    puts string_line
  else
    puts string_line + "|" + interger_line
  end
end
