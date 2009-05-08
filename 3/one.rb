class Prime
  def self.upto(max)
    2.upto(max) do |i|
      yield i if i.prime?
    end
  end
end

class Fixnum
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

NUMBER = 600851475143

Prime.upto(NUMBER/2) do |prime|
  greatest_prime_factor = prime if prime.is_factor_of?(NUMBER)
end
puts greatest_prime_factor
