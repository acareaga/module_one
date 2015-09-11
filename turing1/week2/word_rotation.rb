# Warm up from 9/1

# apple is a rotation of apple
# pplea is a rotation of apple
# pleap is a rotation of apple
# paple is not a rotation of apple
# elppa is not a rotation of apple
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class WordRotationTest < Minitest::Test
  def test_it_exists
    assert WordRotation.new("apple")
  end

  def test_apple_is_a_rotation_of_apple
    apple = WordRotation.new("Apple")

    assert apple.check_rotation?("Apple")
  end

  def test_hello_is_not_a_rotation_of_apple
    apple = WordRotation.new("Apple")

    refute apple.check_rotation?("Hello")
  end

  def test_Apple_is_a_rotation_of_apple_capitalized
    apple = WordRotation.new("apple")

    assert apple.check_rotation?("Apple")
  end

end

class WordRotation
  def initialize(word)
    @word = word.downcase
  end

  def check_rotation?(check_word)
    if check_word.downcase == @word
      true
    else
      false
    end
  end
end
