class Player
  attr_reader :name, :hit_points
  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def attack(player)
    @player = player
    @player.deduct
  end

  def deduct
    @hit_points -= 10
  end

end
