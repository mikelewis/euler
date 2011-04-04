def d(num)
  proper_divisors = 1.upto(Math.sqrt(num)).select{|x| num % x == 0}.inject([]){|r, n| r << n; r << num/n unless n == num/n || num/n == num; r}
  proper_divisors.inject(:+)
end

def solve
  (1...10000).inject([]) do |pairs, i|
    first = d(i)
    if d(first) == i && i != first
      pairs << first
      pairs << i
    end

    pairs
  end.uniq.inject(:+)
end
puts solve
