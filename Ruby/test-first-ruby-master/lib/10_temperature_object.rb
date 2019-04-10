class Temperature

  def initialize(opts = {})
    @options = opts
  end

  def self.from_celsius(temp)
    new(:c => temp)
  end

  def self.from_fahrenheit(temp)
    new(:f => temp)
  end

  def in_fahrenheit
    if @options.key?(:c)
      @fahrenheit = ctof(@options[:c])
    else
      @fahrenheit = @options[:f]
    end
  end
  #
  def in_celsius
    if @options.key?(:f)
      @celcius = ftoc(@options[:f])
    else
      @celcius = @options[:c]
    end
  end

  def ftoc(temp)
     (temp - 32.0) * 5.0/9.0
  end

  def ctof(temp)
    (temp * 9.0/5.0) + 32.0
  end

end

class Celsius < Temperature
  def initialize(temp)
    super(:c => temp)
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super(:f => temp)
  end
end
