# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

n = 600851475143
max_factor = 1
factor = 2

while n >=2 do
  if n%factor == 0
    max_factor = factor
    n /= factor while n%factor == 0
  end

  factor += 1
end

puts max_factor