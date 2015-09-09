class Words

  def initialize(string)
    @string = string
  end

  def splitter
    @string.split
  end

  def word_count
    hash = {}
    splitter.each do |word|
      if hash.include?(word)
        hash[word] += 1
      else
        hash[word] = 1
      end
    end
    hash
  end

  def values
    word_count.values
  end

  def most_words
    values.sort
  end

end

word = Words.new("this this this is is a a sentence")
word.word_count
word.values
word.most_words
