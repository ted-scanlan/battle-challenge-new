require 'game'

describe Game do

  let(:player_1) { double 'player_1'}
  let(:player_2) { double 'player_2'}
  subject(:game) { described_class.new(player_1, player_2) }   #game = Game.new()

  it 'allows an attack' do
    expect(player_2).to receive(:deduct)
    game.attack(player_2)
  end

  it 'accepts two player instances' do
    expect(game.player_1).to eq player_1
  end

end
