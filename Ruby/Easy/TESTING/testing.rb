def printError(error)
  if error ==0
    puts "Done"
  elsif error <=2
    puts "Low"
  elsif error <= 4
    puts "Medium"
  elsif error <=6
    puts "High"
  else
    puts "Critical"
  end
end

File.open('in.txt').each_line do |line|
  first_string = line.chomp.split(" | ")[0]
  second_string = line.chomp.split(" | ")[1]
  error = 0
  for i in (0..first_string.length)
    if first_string[i] != second_string[i]
      error += 1
    end
  end
  printError(error)
end
