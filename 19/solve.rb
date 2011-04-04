def solve
  months = {
    1 => 31,
    2 => 28,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31
  }
  num_sundays = 0
  start_day = 2
  (1901..2000).each do |year|
    (1..12).each do |month|
      if start_day == 0
        num_sundays += 1
      end
      days = if month == 2 && (year % 4 == 0 || (year == 2000 && year % 400 == 0))
               29
             else
               months[month]
             end
      start_day = (start_day + days) % 7
    end
  end
  num_sundays
end

puts solve

