class Multiples
  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    range = (1..(limit-1))

    range.collect do |num|
      if num%3 == 0 || num%5 == 0
        num
      end
    end.compact
  end

  def sum_multiples
    sum = 0

    collect_multiples.each do |num|
      sum += num
    end

    sum
  end
end
