class Player
  attr_reader :name, :hp
  def initialize(name)
    @name = name
    @hp = 100
  end
  def get_attacked
    @hp -= 10
  end
end