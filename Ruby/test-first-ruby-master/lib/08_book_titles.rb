class Book
  attr_accessor :title

  def title=(name)
    name = name.split
    word_check = ["the", "a", "an", "and", "in", "of"]
    name.each_with_index do |val,index|
      if index == 0
        capitalize(val)
      elsif word_check.include?(val)
        val
      else
        capitalize(val)
      end
    end
    @title = name.join(" ")
  end

  def capitalize(word)
    word[0] = word[0].upcase
  end

end
 
