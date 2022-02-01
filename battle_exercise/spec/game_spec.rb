require 'game'

describe 'game' do
  # let(:player1) { double :player }
  # let(:player2) { double :player }

  it 'attacks a player' do
    player1_double = double("Player", :name => "Jane", :hp => 100, :get_attacked => true)
    player2_double = double("Player", :name => "John", :hp => 100, :get_attacked => true)

    g = Game.new(player1_double, player2_double)
    g.attack(player2_double)

    expect(player2_double).to have_received(:get_attacked)
  end

  it 'stores player names' do
    player1_double = double("Player", :name => "Jane", :hp => 100)
    player2_double = double("Player", :name => "John", :hp => 100)

    g = Game.new(player1_double, player2_double)

    expect(g.players).to eq "Jane, John"
  end
  it 'checks when a game is lost' do
    player1_double = double("Player", :name => "Jane", :hp => 10)
    player2_double = double("Player", :name => "John", :hp => 0)

    g = Game.new(player1_double, player2_double)

    expect(g.winner?).to eq player1_double
  end
end