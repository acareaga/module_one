require 'minitest/autorun'
require 'minitest/pride'
require_relative 'game'

class TestPlayGame < Minitest::Test

  def test_user_input
    user_guess = gets.chomp
    assert_equal "rrgb", user_guess
  end

  def test_if_colors_are_valid
    colors = [ "r", "b", "g", "y" ]
    assert colors.include?(user_guess)
  end

end
