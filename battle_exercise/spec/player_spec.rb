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
  it 'deducts some hp whenever attacked' do
    p1 = Player.new("Jane")
    allow(p1).to receive(:rand).and_return(50)
    p1.get_attacked
    expect(p1.hp).to eq 50
  end
  it 'attacks a player and deducts points' do
    p1 = Player.new("Jane")
    p2 = Player.new("John")
    allow(p2).to receive(:rand).and_return(50)
    p1.attack(p2)
    expect(p2.hp).to eq 50
  end
end