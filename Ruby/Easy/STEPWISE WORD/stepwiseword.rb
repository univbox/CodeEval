File.open('in.txt').each_line do |line|
  line.chop!
  longest_word = ""
  longest_count = 0
  word_arr = line.split(" ")

  word_arr.each do |word|
    if word.length > longest_count
      longest_word = word
      longest_count = word.length
    end
  end

  star_count = 0

  longest_word.each_char do |char|
    for i in (0..star_count-1)
      print "*"
    end
    print char + " "
    star_count += 1
  end
  puts ""
end
