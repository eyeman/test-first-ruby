class RPNCalculator
  attr_accessor :calc_array, :value

  def initialize
    @calc_array = Array.new
    @value = 0
  end

  def push(val)
    @calc_array.push(val)
  end

  def plus
    temp = pop()
    @value = pop() + temp
    @calc_array.push(@value)
    @value
  end

  def minus
    temp = pop()
    @value = pop() - temp
    @calc_array.push(@value)
    @value
  end

  def divide
    temp = pop()
    @value = pop().to_f / temp.to_f
    @calc_array.push(@value)
    @value
  end

  def times
    temp = pop()
    @value = pop().to_f * temp.to_f
    @calc_array.push(@value)
    @value
  end

  def pop()
    begin
      if @calc_array.size == 0
        raise 'calculator is empty'
      else
        @calc_array.pop
      end
    end
  end

  # def tokens (str)
  #   arr = str.split(" ") #scan or split
  #   arr.each_with_index do |ele,idx|
  #     if ele.to_i.is_number?
  #       arr[idx] = arr[idx].to_i
  #     else
  #       arr[idx] = arr[idx].to_sym
  #     end
  #   end
  # end
  #
  # def evaluate (str)
  #
  # end

end
