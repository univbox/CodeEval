str = ["zero","one","two","three","four","five","six","seven","eight","nine"]

File.open('in.txt').each_line do |line|
  line.chop!
  arr = line.split(";")
  arr.each do |num|
    index = str.index(num)
    print index
  end
  puts ""
end
