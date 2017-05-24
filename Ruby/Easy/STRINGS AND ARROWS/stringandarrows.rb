symbol1 = '>>-->'
symbol2 = '<--<<'

File.open('in.txt').each_line do |line|
  arrows = line.chomp
  length = arrows.length
  count = 0
  for i in (0..length-5)
    if symbol1 == arrows[i..i+4] || symbol2 == arrows[i..i+4]
      count += 1
    end
  end
  puts count
end
