require 'prime'
# For fun :) ( I know it's slow. It recreates the list of primes everytime you want one more. AKA FUN)
def primes
  Enumerator.new do |y|
    result = 0
    n = 3
    loop do
      candidates = (0..n).to_a
      candidates[0] = candidates[1] = nil
      candidates.each do |c|
        next unless c
        break if c * c > n
        (c*c).step(n, c){|m| candidates[m] = nil}
      end
      candidates.compact!
      if candidates[-1] != result
        y.yield candidates[-1]
        result = candidates[-1]
      end
      n+=1
    end
  end
end




def solve(n)
  Prime.take(n)[-1]
  #primes.take(n)[-1]
end

puts solve(10001)


