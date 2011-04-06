def solve(str)
  str.split(//).permutation.each_with_index do |o, i|
    return o.join if i == 999_999
  end

end

puts solve("0123456789")
