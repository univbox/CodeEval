def determine_signal(word)
  signal = 0
  if word == "00"
    signal = 1
  end
  signal
end

File.open('in.txt').each_line do |line|
  words = line.split(" ")
  output_string = ""

  length = (words.length)/2

  for i in (0..length-1)
    isOne = determine_signal(words[i*2])
    if isOne==1
      output_string <<  "1"*words[i*2+1].length
    else
      output_string <<  "0"*words[i*2+1].length
    end
  end
  puts output_string.to_s.to_i(2)
end
