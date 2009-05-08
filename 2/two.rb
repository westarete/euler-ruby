
class Fixnum
  def even?
    self % 2 == 0
  end
end

class Fibonacci
  def self.upto(max)
    fib = 0
    first = 0
    second = 1
    begin
      fib = first + second
      yield fib
      first = second
      second = fib
    end until fib > max
  end
end

sum = 0
Fibonacci.upto(4_000_000) do |i|
  sum += i if i.even?
end
puts sum