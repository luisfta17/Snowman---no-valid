class HiddenWord
  attr_reader(:word)

  def initialize(word)
    @word = word
  end



  def check_letter(letter)
    guess = []
    guess.push(@word.downcase.split(""))
    #guess[0].find {|each_letter| if each_letter != letter ? true : false }
    for each_letter in guess[0]
      if letter == each_letter
        return true
      else
        return false
      end
    end
  end

  def display_word(letter)
    displayed = []
    guess = []
    guess.push(@word.downcase.split(""))
    for each_letter in guess[0]
      if letter == each_letter
        displayed.push(letter)
      else
        displayed.push("*")
      end
    end
    return displayed.join("")
  end









end
