# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025  385 = 2640.
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

# Solution: It can be shown that the sum of the squares of the numbers from
# 1 to n is n(n + 1)(2n + 1)/6, and the square of the sum of the bumbers from
# 1 to n, (n(n + 1)/2)^2. After some manipulation, the difference becomes:
# (n^4)/4 + (n^3)/6 - (n^2)/4 - n/6

puts (3*10**8 + 2*10**6 - 3*10**4 - 2*10**2)/12