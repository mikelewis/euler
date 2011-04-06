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
  fibs.each_with_index do |e, i|
    #num_digits = (Math.log(e)/Math.log(10)).to_i + 1
    return i + 2 if e.to_s.size >= 1000
  end
end

puts solve
