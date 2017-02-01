class Elements
  attr_accessor :elements
  def initialize
    @elements = []
  end

  def insert(element)
    @elements << element
  end

  def include?(element)
    included = false
    @elements.each do |elem|
      if element == elem
        included = true
        break
      end
    end
    included
  end

end

#File.open(ARGV[0]).each_line do |line|
File.open('in.txt').each_line do |line|

    arr = line.split(',').map(&:to_i)
    elem = Elements.new
    arr.each do |number|
      unless elem.include?(number)
        elem.insert(number)
      end
    end

    major = arr[0]
    count = 0

    elem.elements.each do |number|
      sub_count = 0
      i = 0

      while i < arr.length
        if number == arr[i]
        sub_count += 1
        end
        i += 1
      end

      if count < sub_count
        major = number
        count = sub_count
      end

    end

    if count > arr.length/2
      puts major
    else
      puts 'None'
    end

end
