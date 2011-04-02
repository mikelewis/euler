require 'prime'

def solve(n)
  Math.sqrt(n).to_i.times.inject do |x, e|
    x = e if n % e == 0 && Prime.prime?(e)
    x
  end
end

puts solve(600851475143)
