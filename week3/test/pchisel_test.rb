require_relative '../lib/pchisel'

class ChiselTest < Minitest::Test

  def test_turns_markdown_into_html
    skip
  end

  def test_turns_chunks_with_leading_pound_signs_into_headers_of_that_level
    assert_equal "<h1>abcd</h1>", Chisel.new("# abcd").to_html
    assert_equal "<h6>abcd</h6>", Chisel.new("###### abcd").to_html
  end

  def test_turns_everything_else_into_paragraph
    assert_equal "<p>abcd</p>", Chisel.new("abcd").to_html
  end

  def test_turn_words_wrapped_in_single_asterisks_into_emphasized_italics
    skip
  end

  def test_turn_words_wrapped_in_double_asterisks_into_strong_bold
    skip
  end

  def test_turn_ampersand_into_amp
    skip
  end

end
