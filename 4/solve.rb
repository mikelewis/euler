def palindromic?(n)
  s = n.to_s
  s_size = s.size
  start = (s.size % 2 == 0) ? s_size/2: s_size/2 + 1
  s[0..s_size/2-1] == s[start..-1].reverse
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

