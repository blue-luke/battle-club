require 'game'

describe 'game' do
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'attacks a player' do
    g = Game.new(player1, player2)
    expect(player2).to receive(:get_attacked)
    g.attack(player2)
  end

  it 'stores player names' do
    player1_double = double("Player", :name => "Jane")
    player2_double = double("Player", :name => "John")

    g = Game.new(player1_double, player2_double)

    expect(g.players).to eq "Jane, John"
  end
end