def sum_of_squares(n)
  (2*n**3+3*n**2+n)/6
end

def square_of_sums(n)
  ((n**2+n)/2)**2
end
def solve(n)
  square_of_sums(n) - sum_of_squares(n)
end

puts solve(100)
