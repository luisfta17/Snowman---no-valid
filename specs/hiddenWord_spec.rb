require("minitest/autorun")
require("minitest/rg")
require_relative("../player")
require_relative("../hiddenWord")
require_relative("../game")


class HiddenWordTest < MiniTest::Test

  def setup
    @word1 = HiddenWord.new("Luis")
  end

  def test_word
    assert_equal("Luis", @word1.word)
  end

  def test_check_letter__True
    assert_equal(true, @word1.check_letter("l"))
  end

  def test_check_letter__false
    assert_equal(false, @word1.check_letter("o"))
  end

  def test_display_word__nomatch
    assert_equal("****", @word1.display_word("f"))
  end

  def test_display_word__match
    assert_equal("l***", @word1.display_word("l"))
  end

  def test_display_word__match2
    assert_equal("*u**", @word1.display_word("u"))
  end



end
