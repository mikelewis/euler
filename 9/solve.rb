#MATH IS COOL
#a + b + c = 1000
#c = 1000 - a -b
#a^2+b^2 = (1000-a-b)^2
#1_000_000 = -2ab+2000*a+2000*b
#
def solve
  (1..1000).each do |a|
    (1..1000).each do |b|
      if -2*a*b+2000*a+2000*b == 1_000_000 && (a < b)
        return [a,b, Math.sqrt(a**2+ b**2).to_i]
      end
    end
  end
end

puts solve.inject(&:*)
