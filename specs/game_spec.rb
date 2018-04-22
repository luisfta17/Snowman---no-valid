require("minitest/autorun")
require("minitest/rg")
require_relative("../player")
require_relative("../hiddenWord")
require_relative("../game")


class GameTest < MiniTest::Test

  def setup
    @player1 = Player.new("One")
    @word1 = HiddenWord.new("Luis")
    @game1 = Game.new(@player1, @word1)
  end

  def test_game_player_name
    assert_equal("One", @game1.player.name)
  end

  def test_game_word
    assert_equal("Luis", @game1.word.word)
  end

  def test_take_a_guess
    assert_equal("l***", @game1.take_a_guess("l", @word1))
    assert_equal(1, @game1.guessed_letters.length)
    #assert_equal("*u**", @game1.take_a_guess("u", @word1))
  end

  # def test_take_a_guess__multiple_letters
  #   @game1.take_a_guess("l", @word1)
  #   @game1.take_a_guess("u", @word1)
  #   assert_equal(2, @game1.guessed_letters.length)
  # end

end
