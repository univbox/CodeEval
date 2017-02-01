#File.open(ARGV[0]).each_line do |line|
File.open('in.txt').each_line do |line|
  puts line.downcase
end
