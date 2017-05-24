def include_key?(word,key)
  if word.include?(key)
    true
  else
    false
  end
end

#file = File.open("out.txt", "w")

File.open('in.txt').each_line do |line|
  names = line.split(" | ")[0]
  key = line.chomp.split(" | ")[1]
  names = names.split(" ")

  find = false
  output = []
  names.each do |name|
    wine_name = true

    key.each_char do |char|
      if !include_key?(name,char)
        wine_name = false
        break
      end
    end

    if wine_name
      find = true
      output << name
    end
  end

  if find
    puts output.join(" ")
    #file.puts(output.join(" "))
  else
    puts "False"
    #file.puts("False")
  end

end
