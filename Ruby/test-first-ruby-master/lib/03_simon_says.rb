def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(str, num=2)
  repeat_str = ""
  i = num
  while i > 0
    repeat_str << str
    if i > 1
      repeat_str << " "
    end
    i -= 1
  end
  return repeat_str
end

def start_of_word(str, num)
  temp = ""
  i = 0
  while i < num
    temp << str[i]
    i += 1
  end
  temp
end

def first_word(str)
  arr = str.split(" ")
  arr[0]
end

def titleize(str)
  words = str.split(" ")
  final_string = ""
  words.each_with_index do |word,index|
    if index == 0 || word.length > 4 ||  words.length == 1 || index == words.length - 1
      final_string << word[0].upcase
      final_string << word[1..-1]
    else
      final_string << word
    end
    if words.length > 1 && word != words[-1]
      final_string << " "
    end
  end
  final_string
end
