class Player
  attr_reader :name, :hp
  def initialize(name)
    @name = name
    @hp = 100
    @defending = false
  end
  def get_attacked
    @hp -= calculate_damage
  end
  def calculate_damage
    unless @defending
      rand(10)
    # else
    #   @defending = false
    else
      0
    end
  end
  def attack(player)
    player.get_attacked
  end
  def defend
    @defending = true
  end
end