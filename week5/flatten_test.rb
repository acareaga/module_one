require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './flatten'

class FlattenTest < Minitest::Test

  def test_combine_nested_arrays
    all = [1, 1, 2, 3, 4, 5]
    start_array = [1, [1,2],[3,[4,5]]]

    assert_equal all, CustomArray.new.combine_nested_arrays(start_array)
  end

  def test_combine_nested_arrays_start_with_array
    all = [1, 2, 3, 4, 5]
    start_array = [[1,2],[3,[4,5]]]

    assert_equal all, CustomArray.new.combine_nested_arrays(start_array)
  end

  def test_combine_nested_arrays_start_with_array_nested_nested
    all = [1, 2, 3, 4, 3, 4, 5]
    start_array = [[1, 2, [3, 4]],[3,[4,5]]]

    assert_equal all, CustomArray.new.combine_nested_arrays(start_array)
  end

  def test_combine_nested_arrays_differet_type_data
    all = [1, "2", 3, 4, 3, 4, 5]
    start_array = [[1, "2", [3, 4]],[3,[4,5]]]

    assert_equal all, CustomArray.new.combine_nested_arrays(start_array)
  end

end
