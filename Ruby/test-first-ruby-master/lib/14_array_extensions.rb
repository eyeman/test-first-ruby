class Array
  attr_accessor :sum

  def sum
    total = 0
    each { |val| total += val }
    @sum = total
  end

  def square
    map { |val| val * val}
  end

  def square!
    map! { |val| val * val}
  end

end
