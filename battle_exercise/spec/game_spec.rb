require 'game'

describe 'game' do
  let(:player1) { double :player }
  let(:player2) { double :player }
  it 'attacks a player' do
    g = Game.new
    expect(player2).to receive(:get_attacked)
    g.attack(player2)
  end
end