def fibs
  Enumerator.new do |e|
    x = 1
    y = 2
    loop do
      e.yield x
      x, y = y, x + y
    end
  end
end

def solve
  sum = 0
  fibs.each do |e|
    break if e > 4_000_000
    sum += e if e % 2 == 0
  end
  sum
end

puts solve
