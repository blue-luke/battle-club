feature 'State next turn' do
  scenario 'Player 1 goes firest' do
    sign_in_and_play

    expect(page).to have_content "It is Jane's go"
  end
end