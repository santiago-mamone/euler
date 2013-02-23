# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
# What is the 10 001st prime number?

def prime?(n)
  2.upto(Math.sqrt(n).floor) do |i|
    return false if n%i == 0
  end

  true
end

i = 1
n = 1

while i <= 10001 do
  n += 1
  i += 1 if prime?(n)
end

puts n