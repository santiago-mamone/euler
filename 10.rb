# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#
# Find the sum of all the primes below two million.

def prime?(n)
  2.upto(Math.sqrt(n).floor) do |i|
    return false if n%i == 0
  end

  true
end

puts (2..2000000).select { |n| prime?(n) }.inject(:+)