File.open('in.txt').each_line do |line|
  arr = line.split(" ")
  arr.sort_by! { |s| s.to_f }
  puts arr.join(" ")
end
