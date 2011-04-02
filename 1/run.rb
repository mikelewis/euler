def solve
  1000.times.inject do |sum, e|
    sum += e if e % 3 == 0 || e % 5 == 0
    sum
  end
end

puts solve
