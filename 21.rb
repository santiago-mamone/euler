=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n
which divide evenly into n). If d(a) = b and d(b) = a, where a != b, then a
and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are
1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper
divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end

def sum_of_proper_divisors_of(n)
  result = 0
  1.upto(n/2) { |i| result += i if n%i == 0 }
  result
end

sum_of_proper_divisors_by_number = {}
amicable_numbers = []

1.upto(9999) do |n|
  sum_of_proper_divisors_by_number[n] = sum_of_proper_divisors_of(n)
end

sum_of_proper_divisors_by_number.each do |n, m|
  amicable_numbers << n if sum_of_proper_divisors_by_number[m] == n && n != m
end

result = amicable_numbers.inject(:+)

puts result