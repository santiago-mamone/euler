=begin

n! means n x (n-1) x ...x3 x 2 x 1

For example, 10! = 10 x 9 x ... x 3 x 2 x 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

=end

def factorial(n)
  (1..n).inject(:*) || 1
end

factorial_as_string = factorial(100).to_s
digits = factorial_as_string.split('').map { |d| d.to_i }
sum = digits.inject(:+)

puts sum