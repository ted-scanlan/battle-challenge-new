class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack(player)
    @player = player
    @player.deduct
  end

  def game_over?
    @player_1.hit_points.zero? || @player_2.hit_points.zero?
  end

end
