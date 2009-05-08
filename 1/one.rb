#!/usr/bin/env ruby

require 'set'

multiples = Set.new

(3...1000).step(3) { |i| multiples << i }

(5...1000).step(5) { |i| multiples << i }

sum = multiples.inject(0) { |sum, i| sum += i }
puts sum