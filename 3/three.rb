module Factoring
  def is_factor_of?(number)
    number % self == 0
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

NUMBER = 600_851_475_143

(NUMBER/2).downto(2) do |i|
  if i.is_factor_of?(NUMBER) && i.prime?
    puts "found #{i}"
    exit
  end
end
