# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
#                              a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# Solution:
# a^2 + b^2 = (1000 - (a+b))^2 = 10^6 - 2000*(a+b) + (a+b)^2 =>
# a^2 + b^2 = 10^6 - 2000a - 2000b + a^2 + 2ab + b^2 =>
# 10^6 - 2000a - 2000b + 2ab = 0 =>
# 2000a + 2000b - 2ab = 10^6 and c = 1000 - a - b

1.upto(1000) do |a|
  a.upto(1000) do |b|
    if 2000*a + 2000*b - 2*a*b == 10**6
      puts a*b*(1000 - a - b)
    end
  end
end