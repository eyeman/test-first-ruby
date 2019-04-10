class Dictionary

  def initialize
    @words = {}
  end

  def entries()
    @words
  end

  def add(other_hash)

    if other_hash.is_a?(Hash)
      @words.merge!(other_hash)
    else
      @words[other_hash] = nil
    end
      # @words = {other_hash => nil}
  end

  def keywords()
    @words.keys.sort
  end

  def include?(key)
    @words.include?(key)
  end

  def find(word)
    hash = {}
    @words.each_key do |key|
      if key.to_s.include?(word)
        hash[key] = @words[key]
      end
    end
    hash
  end

  def printable
    temp = @words.sort.map {|key, val| "[#{key}] \"#{val}\""}
    temp.join("\n")
  end
end
