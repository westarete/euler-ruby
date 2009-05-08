first = 1
second = 2
sum = 0
fib = 0

begin
  fib = first + second
  sum += fib if fib % 2 == 0
  first = second
  second = fib
end while fib < 4_000_000

puts sum