class Game
  attr_reader(:player, :word, :guessed_letters)
  attr_writer(:guessed_letters)

  def initialize(player, word)
    @player = player
    @word = word
    @guessed_letters = []
  end

  def take_a_guess(letter, word)
    if word.check_letter(letter)
      @guessed_letters.push(letter)
    end
      #word.display_word(@guessed_letters.join(""))
      word.display_word("l", "u")
  end

end
