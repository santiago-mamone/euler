# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

# Solution: The problem is asking for the least common multiple of the numbers
# from 1 to 20. And lcm(a, b, c) = lcm(lcm(a, b), c)

puts (1..20).inject(:lcm)