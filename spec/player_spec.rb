require 'player.rb'

describe Player do
  it 'returns player name' do
  tester = Player.new('Ted')
  expect(tester.name).to eq 'Ted'
end
end
