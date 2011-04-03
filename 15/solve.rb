#pascals tri. is cool :}
def solve(rows)
  num =  (2*rows).downto(1).inject(:*)
  den = rows.downto(1).inject(:*)
  den = den **2
  num/den
end

puts solve(20) 
