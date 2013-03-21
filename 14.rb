# The following iterative sequence is defined for the set of positive integers:
#
# n -> n/2 (n is even)
# n -> 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following
# sequence:
#
#          13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
#
# It can be seen that this sequence (starting at 13 and finishing at 1)
# contains 10 terms. Although it has not been proved yet (Collatz Problem),
# it is thought that all starting numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?

def collatz(n)
  n.even? ? n/2 : 3*n + 1
end

def collatz_length(n, cache)
  return 1 if n == 1

  result = 0

  if cache[n]
    result = cache[n]
  else
    result = collatz_length(collatz(n), cache) + 1
    cache[n] = result
  end

  result
end

max_length = 0
result = 0
cache = {}

(1...1000000).each do |n|
  length = collatz_length(n, cache)
  if length > max_length
    max_length = length
    result = n
  end
end

puts result
