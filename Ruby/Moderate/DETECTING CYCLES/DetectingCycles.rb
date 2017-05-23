@found = false
@repeat_cycle = 0
def Verify

end

def CompareByRepeatCycle(arr)
  count = 0
  first = arr[0]
  second = arr[@repeat_cycle+1]
  p @repeat_cycle
  p first
  p second

end

def FindCycle(arr)
  #until @found
    CompareByRepeatCycle arr
    #Verify arr
  #end
end


File.open('in.txt').each_line do |line|
  line.rstrip!
  arr = line.split(" ").reverse
  p arr
  @repeat_cycle = arr.length/2
  FindCycle arr
end
