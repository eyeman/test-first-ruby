def translate(str)
  vowels = "aeiou"
  words = str.split
  string = ""
  arr = []
  words.each do |word|
    if vowels.include?(word[0])
      arr.push(word + "ay")
    else
      word.each_char.with_index do |chr, i|
        if (word[i].to_s + word[i+1].to_s) == "qu"
            arr.push(word[i+2..-1] + word[0..i+1] + "ay")
            break
        end
        if vowels.include?(chr)
          arr.push(word[i..-1] + word[0...i] + "ay")
          break
        end
      end
    end
  end
  string = arr.join(" ")
  return string
end
