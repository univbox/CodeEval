File.open('in.txt').each_line do |line|
  games = line.chomp.split("|")
  scores = Hash.new("")
  games.each do |game|
    game = game.split(" ")
    game.each do |elem|
      if !scores.include?(elem)
        scores[elem] = ""
      end
    end
  end

  scores = scores.sort_by{|key,value| key.to_i}.to_h

  scores.each do |key,value|
    index = 1
    games.each do |game|
      game = game.split(" ")
      if game.include?(key)
        scores[key] = scores[key] + " " + index.to_s
      end
    index += 1
    end
  end
  scores.each do |key,value|
    print key + ":" + value.split(" ").join(",") + "; "
  end
  puts ""
end
