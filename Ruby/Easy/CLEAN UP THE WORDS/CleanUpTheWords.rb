@state = "start"
#@str_elem = /[A-z]/
@str_elem = /\p{Alpha}/



def printX(elem)
  if(@str_elem =~ elem)
    print elem.downcase
    @state = "string"
  end
end

def printstr(elem)
  if(elem =~ @str_elem)
    print elem.downcase
  else
    print " "
    @state = "x"
  end
end

def printstart(elem)
  if(elem =~ @str_elem)
    print elem.downcase
    @state = "string"
  else
    @state = "x"
  end
end

def refining(line_arr)
  @state = "start"
  line_arr.each do |elem|
    elem = elem.to_s
    if(@state == "start")
      printstart elem
    elsif(@state == "string")
      printstr elem
    else
      printX elem
    end
  end
end

File.open('in.txt').each_line do |line|
  line = line.rstrip
  line = line.split(//)
  refining line
  puts
end
