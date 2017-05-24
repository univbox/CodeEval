File.open('in.txt').each_line do |line|
  unless line.length == 1
    line =  line[/\[.*?\]/].to_s
    items = line.scan(/\{.*?\}/)
    sum = 0
    items.each do |item|
      if item.include?("label")
        id = item.scan(/\id.*?,/)
        id = id.to_s.gsub(/\D/,' '){|num| sum += num.to_i}
        id = id.split(" ")
        sum += id[0].to_i
      end
    end
    puts sum
  end


end
