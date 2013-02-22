# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91  99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

max = 0

1.upto(999) do |n|
  (n).upto(999) do |m|
    x = m*n
    if x > max && palindrome?(x)
      max = x
    end
  end
end

puts max