require 'player'

describe 'player' do
  it 'stores a player, their name' do
    p1 = Player.new("Jane")
    expect(p1.name).to eq "Jane"
  end
  it 'starts a player with 100 hp' do
    p1 = Player.new("Jane")
    expect(p1.hp).to eq 100
  end
  it 'deducts 10 hp whenever attacked' do
    p1 = Player.new("Jane")
    p1.get_attacked
    expect(p1.hp).to eq 90
  end
end