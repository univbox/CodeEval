File.open('in.txt').each_line do |line|
  lower = line.gsub(/[A-Z]/, '')
  capital = line.gsub(/[a-z]/,'')

  lower_ratio = (lower.length-1.00)/(line.chomp.length) * 100.00
  capital_ratio = (capital.length-1.00)/(line.chomp.length) * 100.00

  puts "lowercase: %0.2f" % [lower_ratio] + " uppercase: %0.2f" % [capital_ratio]
  #puts "lowercase: " + lower_ratio.round(2).to_s + " uppercase: " + capital_ratio.round(2).to_s
end
