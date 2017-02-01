class MersennePrime
  attr_accessor :merssenArray, :primeArray, :last_test_num

  def initialize
    @merssenArray = [3]
    @primeArray = [2,3]
    @last_test_num = 4
  end

  def calNextPrime(target)
    numer = @primeArray.last + 2
    while target > @primeArray.last
      @primeArray.each do |denom|
        if numer % denom == 0
          numer += 2
          break

        elsif denom == @primeArray.last
          @primeArray << numer
          #p @primeArray
          numer == target ? @merssenArray << numer :
          break
        else

        end
      end
    end
  end


  def calNextMerPrime(num)
    target = @last_test_num
    #p @last_test_num
    #while @merssenArray.last > num
    begin
      target *= 2
      calNextPrime target-1

    end while target < num
    @last_test_num = target/2
    new_array =  @merssenArray.select{|v|
      v < num
    }
    print new_array.join(", ")
  end

  def printMerPrime(test_num)
    if test_num <= @merssenArray.last
      new_array = @merssenArray.select{|v|
        v < test_num
      }
      print new_array.join(", ")
    else
      calNextMerPrime test_num
    end

  end
end


mer = MersennePrime.new
first = true
#File.open(ARGV[0]).each_line do |num|
File.open('in.txt').each_line do |num|
  if (num.to_i >=4) & (num.to_i <=10000)
    if first
      mer.printMerPrime num.to_i
      first = false
    else
      puts
      mer.printMerPrime num.to_i
    end
  end
end
