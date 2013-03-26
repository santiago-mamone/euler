=begin
  
2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2^1000?
  
=end

power_as_string = (2**1000).to_s
digits = power_as_string.split('').map { |d| d.to_i }
sum_of_digits = digits.inject(:+)

puts sum_of_digits