@houses = []
@house_num = 0

def calculate_distance(start)
  distance = 0
  @houses.each do |house|
    distance += (house.to_i - start).abs
  end
  distance
end

def move_right(start)
  distance1 = calculate_distance(start)
  if distance1 <= calculate_distance(start+1)
    distance1
  else
    distance1 = move_right(start+1)
  end
  distance1
end

def move_left(start)
  distance1 = calculate_distance(start)
  if distance1 <= calculate_distance(start-1)
    distance1
  else
    distance1 = move_left(start-1)
  end
  distance1
end

def calculate_mid_point()
  sum = 0
  @houses.each do |house|
    sum += house.to_i
  end
  (sum/@house_num).to_i
end

File.open('in.txt').each_line do |line|
  new_line = line.split(" ")
  @house_num = new_line[0].to_i
  @houses = new_line[1..-1]
  mid_point = calculate_mid_point

  distance1 = move_left(mid_point)
  distance2 = move_right(mid_point)
  if(distance1 >= distance2)
    puts distance2
  elsif distance1 < distance2
    puts distance1
  end
end
