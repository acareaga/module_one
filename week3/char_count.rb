class CharacterCount

  def self.most_common_words(paragraph)
    letter_count = paragraph.chars.map.with_object(Hash.new(0)) do |letter, collection|
      collection[letter.downcase] += 1
    end
    print letter_count.max_by(letter_count.count) { |letter, count| count }
  end

end

paragraph = ARGV[0]

CharacterCount.most_common_words(paragraph)
