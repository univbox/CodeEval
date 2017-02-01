def fibonachi(x)
  if (x == 0)
    0
  elsif (x == 1) | (x == 2)
    1
  elsif x==3
    2
  else
    fibonachi(x-1)+fibonachi(x-2)
  end
end

File.open('in.txt').each_line do |line|
  x = line.to_i
  puts fibonachi(x)
end
