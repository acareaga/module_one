def word_finder
  word = ["giraffe", "dog", "cat", "bird", "bear"]
  seven = []
    word.each do |name|
      if name.length == 7
      seven << name
      end
    end
  puts seven
end

word_finder
