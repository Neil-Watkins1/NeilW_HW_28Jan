class Game
  def initialize(item1, item2)
    @item1 = item1
    @item2 = item2
  end


  def result_check


    if (@item1 == "rock") & (@item2 == "paper")
      return "player 2 wins with paper!"
    elsif (@item1 == "rock") & (@item2 == "scissors")
      return "player 1 wins with rock!"
    elsif (@item1 == "paper") & (@item2 == "scissors")
      return "player 2 wins with scissors!"
    elsif (@item1 == "paper") & (@item2 == "rock")
      return "player 1 wins with paper!"
    elsif (@item1 == "scissors") & (@item2 == "rock")
      return "player 2 wins with rock!"
    elsif (@item1 == "scissors") & (@item2 == "paper")
      return "player 1 wins with scissors!"
    else @item1 == @item2
      return "draw!"
    end
  end
end
