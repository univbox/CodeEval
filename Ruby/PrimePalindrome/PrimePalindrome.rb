class PrimePalindrome
  attr_accessor :prime_number, :primepalin

  def initialize
    @prime_number = []
    @primepalin = []
    @prime_number << 2
    @primepalin << 2
  end

  def Prime?(a)
    isPrime = true
    @prime_number.each do |prime|
      if a % prime == 0
        isPrime = false
        break
      end
    end
    isPrime
  end

  def insertPrime(a)
    @prime_number << a
    if Palindrome?(a)
      @primepalin << a
    end
    @prime_number.class
  end

  def Palindrome?(a)
    b = a.to_s.split(//)
    i = 0
    palin = true
    while i < b.length / 2
      if b[i] != b[b.length-i-1]
        palin = false
        break
      else
        i += 1
      end
    end
    palin
  end

  def display_last
    puts @primepalin[-2]
  end

end

pp = PrimePalindrome.new
i = 3
while pp.primepalin.last.to_i < 1000
  if pp.Prime?(i)
    pp.insertPrime(i)
  end
  i += 2
end
pp.display_last
