=begin
  
Starting in the top left corner of a 2x2 grid, and only being able to move to
the right and down, there are exactly 6 routes to the bottom right corner.

How many such routes are there through a 20x20 grid?

Solution: Each route is a succesion of moves, right or down. For an nxn grid,
there must be exactly n moves to the right and n moves down. The number of
possible routes is equal to the number of combinations of n moves to the right
and n moves down, and, obviously, a move in one direction is indistinguishable
from another in the same direction.

It follows that, in general, there are (2n)!/(n!*n!) possible routes.

=end

def factorial(n)
  (1..n).inject(:*) || 1
end

puts factorial(2*20)/(factorial(20)*factorial(20))