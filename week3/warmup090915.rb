# Given a paragraph of text with multiple sentences
# print out the five most commonly appearing letters along with their number of occurrences

class TextPrinter

  def self.most_common_words(paragraph)
    letter_count = paragraph.chars.map.with_object(Hash.new(0)) do |letter, collection|
      collection[letter.downcase] += 1
    end
    puts letter_count.max_by(letter_count.count) { |letter, count| count }
  end

end
paragraph = "This is my paragraph. It is not very exciting. Maybe we'll be able to use REGX to find the letters."

TextPrinter.most_common_words(paragraph)
