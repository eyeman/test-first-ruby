class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

   def time_string
     @seconds = (Time.new(0) + seconds).to_s.split(" ")[1]

   end

end
