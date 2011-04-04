def solve
  file = File.open("names.txt").readlines
  names = file[0].gsub("\"", "").split(",").sort
  names.each_with_index.inject(0) do |sum, (e, e_index)|
    sum += (e.split(//).inject(0){|s, c| s += (c.ord - 64); s} * (e_index + 1))
  end
end

puts solve
