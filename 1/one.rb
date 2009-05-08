#!/usr/bin/env ruby

threes = 0
(3...1000).step(3) { |i| threes += i }

fives = 0
(5...1000).step(5) { |i| fives += i }

sum = threes + fives
puts sum