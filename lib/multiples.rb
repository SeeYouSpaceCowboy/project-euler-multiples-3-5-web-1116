def collect_multiples(limit)
  range = (1..(limit-1))

  range.collect do |num|
    if num%3 == 0 || num%5 == 0
      num
    end
  end.compact
end

def sum_multiples(limit)
  sum = 0

  collect_multiples(limit).each do |num|
    sum += num
  end

  sum
end
