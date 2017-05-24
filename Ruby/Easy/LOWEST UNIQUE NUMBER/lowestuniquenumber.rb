@unique_arr = []
@not_unique_list = []

def insert(num)
  if @not_unique_list.include?(num)
    @unique_arr.delete(num)
  else
    @unique_arr << num
    @not_unique_list << num
  end
end

File.open('in.txt').each_line do |line|
  numbers = line.split(" ")
  numbers.each do |num|
    insert(num)
  end

  @unique_arr.sort_by! { |num| num }

  if @unique_arr.empty?
    puts "0"
  else
    puts numbers.index(@unique_arr[0]).to_i + 1
  end
  @unique_arr = []
  @not_unique_list = []
end
