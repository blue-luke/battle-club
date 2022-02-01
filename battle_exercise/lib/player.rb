class Player
  attr_reader :name, :hp
  def initialize(name)
    @name = name
    @hp = 100
  end
  def get_attacked
    @hp -= rand(100)
  end
  def attack(player)
    player.get_attacked
  end
end