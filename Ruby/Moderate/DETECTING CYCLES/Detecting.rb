@lambda =0
@gmu = 0

def floyd(line,x0)
  tor_index = x0
  har_index = x0
  tortoise = line[tor_index+1]
  hare = line[har_index+2]
  while tortoise != hare
    tor_index += 1
    har_index += 2
    tortoise = line[tor_index]
    hare = line[har_index]
  end
  mu = 0
  tor_index = x0
  tortoise = line[tor_index]
  while tortoise != hare
    tor_index += 1
    har_index += 1
    mu += 1
    tortoise = line[tor_index]
    hare = line[har_index]
  end
  lam = 1
  har_index = tor_index+1
  hare = line[har_index]
  while tortoise != hare
    har_index += 1
    hare = line[har_index]
    lam += 1
  end
  @lambda = lam
  @gmu = mu
end


File.open('in.txt').each_line do |line|
  line = line.chomp.split(" ").reverse
  floyd(line,0)
  puts line[@gmu..(@lambda+@gmu-1)].reverse.join(" ")

end
