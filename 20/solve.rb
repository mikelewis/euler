def solve
  100.downto(1).inject(:*).to_s.split(//).inject(0){|sum, e| sum += e.to_i; sum}
end

puts solve
