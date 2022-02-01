feature 'State next turn' do
  xscenario 'A loser is announced' do
    sign_in_and_play

    9.times do
      click_button('Attack player 2')
      click_button('Attack player 1')
    end
    click_button('Attack player 2')

    expect(page).to have_content "Jane has won!"
  end
end