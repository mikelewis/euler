require 'prime'
def triangle_nums
  Enumerator.new do |y|
    i = 1
    loop do
      y.yield (1..i).to_a.inject(&:+)
      i += 1
    end
  end
end

def divisors(n)
  primes, exponents =  Prime.prime_division(n).transpose
  exponents.inject(1){|sum, e| sum *= (e + 1); sum}
end

def solve
  triangle_nums.each do |n|
    next if n <= 1
    if divisors(n) > 500
      puts n
      break
    end
  end
end

solve
