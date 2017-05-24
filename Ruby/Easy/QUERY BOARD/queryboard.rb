@board = Array.new(256){Array.new(256)}

def SetX(line)
  num = line.split(" ")[1].to_i
  num -= 1
  x = line.split(" ")[2]
  if line.include?("Col")
    for i in (0..255)
      @board[i][num] = x.to_i
    end
  else
    for i in (0..255)
      @board[num][i] = x.to_i
    end
  end
end

def QueryX(line)
  num = line.split(" ")[1].to_i
    num -= 1
  sum = 0
  if line.include?("Col")
    for i in (0..255)
      unless @board[i][num].nil?
        sum += @board[i][num]
      end
    end
  else
    for i in (0..255)
      unless @board[num][i].nil?
        sum += @board[num][i]
      end
    end
  end
  puts sum
end


def decideCommand(line)
  command = line.split(" ")[0]
  if command.include?("Set")
    SetX(line)
  elsif command.include?("Query")
    QueryX(line)
  end
end

File.open('in.txt').each_line do |line|
  decideCommand(line)
end
