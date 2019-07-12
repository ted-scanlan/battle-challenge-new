require 'player.rb'

describe Player do

other_player = Player.new('other')

  it 'returns player name' do
    tester = Player.new('Ted')
    expect(tester.name).to eq 'Ted'
  end

  it 'returns player hit points' do
    tester = Player.new('Ted')
    expect(tester.hit_points).to eq 60
  end

  describe "#attack" do

    it 'responds with one argument' do
      tester = Player.new('Ted')
      expect(tester).to respond_to(:attack).with(1).argument
    end

    it 'deducts hit points from oppoent player' do
      tester = Player.new('Ted')
      tester.attack(other_player)
      expect(other_player).to receive("deduct")
      other_player.deduct
    end
  end

  describe "#deduct" do

    it 'deducts hit points from player if attacked' do
      tester = Player.new('Ted')
      expect { tester.attack(other_player) }.to change{other_player.hit_points}.by(-10)

    end
  end
end
