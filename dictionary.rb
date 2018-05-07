class Dictionary
  def initialize
    @words = {}
  end

  def entries
    @words
  end

  def add(hash)
    if hash.class == Hash
      @words = hash.merge(@words)
    else
      @words[hash] = nil
    end
  end

  def keywords
    @words.keys.sort
  end

  def include?(keyword)
    if @words.keys.include?(keyword)
      true
    else
      false
    end
  end

  def find(string)
    results = {}
    @words.keys.each do |key|
      if string == key[0..(string.length-1)]
        results[key] = @words[key]
      end
    end
    results
  end
end
