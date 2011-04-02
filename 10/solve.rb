def primes(n)
  candidates = (0..n).to_a
  candidates[0] = candidates[1] = nil
  candidates.each do |c|
    next unless c
    break if c * c > n
    (c*c).step(n, c){|m| candidates[m] = nil}
  end
  candidates.compact
end

def solve
  primes(2_000_000).inject(&:+)
end

puts solve
