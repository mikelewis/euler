require 'set'
def sum_of_proper_divisors(num)
  proper_divisors = 1.upto(Math.sqrt(num)).select{|x| num % x == 0}.inject([]){|r, n| r << n; r << num/n unless n == num/n || num/n == num; r}
  proper_divisors.inject(:+)
end
def solve
  sum = 0
  (1..20162).inject(Set.new) do |abundant, e|
    if sum_of_proper_divisors(e) > e
      abundant << e
    end
    if abundant.none?{|o| abundant.include?(e - o)}
      sum += e
    end
    abundant
  end
    sum
end

puts solve
