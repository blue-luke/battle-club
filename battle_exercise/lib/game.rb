class Game
  attr_reader :player1, :player2, :next_player
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @next_player = @player1
    @loser = nil
  end
  def attack(player)
    player.get_attacked
    switch_player
  end
  def players
    "#{@player1.name}, #{@player2.name}"
  end
  def switch_player
    if @next_player == @player1
      @next_player = @player2
    elsif @next_player == @player2
      @next_player = @player1
    end
  end
  def loser?
    if @player1.hp == 0
      @loser = @player1
    elsif @player2.hp == 0
      @loser = @player2
    end
  end
end