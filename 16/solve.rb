def solve(n)
  result = 2**1000
  result.to_s.split(//).inject(0){|sum,e| sum += e.to_i}
end

puts solve(1000)
