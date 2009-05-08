class Prime
  def self.downfrom(max)
    max.downto(2) do |i|
      yield i if i.prime?
    end
  end
end

module Factoring
  def is_factor_of?(number)
    self % number == 0
  end
  
  def prime?
    2.upto(self-1) do |i|
      if self % i == 0
        return false
      end
    end
    true
  end
end

class Fixnum
  include Factoring
end

class Bignum
  include Factoring
end

NUMBER = 600851475143

Prime.downfrom(NUMBER/2) do |prime|
  if prime.is_factor_of?(NUMBER)
    puts prime
    exit
  end
end
