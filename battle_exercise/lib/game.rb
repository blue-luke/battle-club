class Game
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  def attack(player)
    player.get_attacked
  end
  def players
    "#{@player1.name}, #{@player2.name}"
  end
end