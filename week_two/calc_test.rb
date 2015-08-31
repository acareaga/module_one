require 'minitest/autorun'
require 'minitest/pride'
require './calc'

class CalcTest < Minitest::Test

  def test_it_quints
    # 1. Setup the object under Test
    # 2. Setup any data that you're going to pass in
    # 3. Do the thing and store the result
    # 4. Express your expected outcome
    # 5. Confirm that the actual result matches your expected outcome

    calculator = Calc.new
    value = 2
    result = calculator.quint(value)
    assert_equal 32, result
  end

  def test_it_quints_five
    calculator = Calc.new
    value = 2
    result = calculator.quint(5)
    assert_equal 3125, result
  end

end
