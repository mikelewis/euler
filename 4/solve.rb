def palindromic?(n)
  n_s = n.to_s
  n_s == n_s.reverse
end

def solve
  max = 0
  999.downto(100).each do |a|
    999.downto(100).each do |b|
      prod = a * b
      break if prod < max
      max = prod if palindromic?(prod) 
    end
  end
  max
end


puts solve
