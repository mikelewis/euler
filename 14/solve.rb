#for fun :)
def sequence(start_with)
  Enumerator.new do |y|
    num = start_with
    loop do
      y.yield num
      break if num == 1
      if num.even?
        num = num / 2
      else
        num = 3*num + 1
      end
    end
  end
end

def chain_length(n)
  count = 1
  loop do
    break if n == 1
    if n.even?
      n = n / 2
    else
      n = 3 * n + 1
    end
    count += 1
  end
  count
end

def solve
  result = [0,0]
  999_999.downto(1).each do |i|
    size = chain_length(i)
    result = [i, size] if size > result[1]
  end
  result
end

puts solve
