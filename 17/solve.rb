WORD_MAP = {
  '0' => "",
  '1'=> "one",
  '2' => "two",
  '3' => "three",
  '4' => "four",
  '5' => "five",
  '6' => "six",
  '7' => "seven",
  '8' => "eight",
  '9' => "nine",
  '10' => "ten",
  '11' => "eleven",
  '12' => "twelve",
  '13' => "thirteen",
  '14' => "fourteen",
  '15' => 'fifteen',
  '16' => 'sixteen',
  '17' => 'seventeen',
  '18' => 'eighteen',
  '19' => 'nineteen',
  '20' => "twenty",
  '30' => "thirty",
  '40' => 'forty',
  '50' => 'fifty',
  '60' => 'sixty',
  '70' => 'seventy',
  '80' => "eighty",
  '90' => 'ninety'
}

def gen_word_from_number(n)
  str = n.to_s
  ret = ""
  if str.size == 1
    ret = WORD_MAP[str[0]]
  else
    front = str[0..-3]
    if front.size == 0
      front = ""
    elsif front.size == 1
      front = WORD_MAP[front] + " hundred"
    else
      front = WORD_MAP[front[0]] + " thousand"
    end
    back = str[-2..-1]
    if WORD_MAP.include?(back)
      back = WORD_MAP[back]
    else
      if back == "00"
        back = ""
      else
        key = (back[0] == "0") ? back[0] : back[0] + "0"
        back = WORD_MAP[key] + "-" + WORD_MAP["#{back[1]}"]
      end
    end
    back = " and " + back if back != "" && front != ""
    ret = front + back
  end
  ret
end

def solve
  1.upto(1000).inject(0) do |sum, i|
    sum += gen_word_from_number(i).gsub(/-|\s/, "").size
    sum
  end
end

puts solve
