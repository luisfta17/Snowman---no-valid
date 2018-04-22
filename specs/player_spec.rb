require("minitest/autorun")
require("minitest/rg")
require_relative("../player")
require_relative("../hiddenWord")
require_relative("../game")


class PlayerTest < MiniTest::Test

  def setup
    @player1 = Player.new("Luis")
  end

  def test_player_lives
    assert_equal(6, @player1.lives)
  end

  def test_player_name
    assert_equal("Luis", @player1.name)
  end
end
