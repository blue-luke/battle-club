feature 'State next turn' do
  scenario 'A winner is announced' do
    sign_in_and_play

    9.times do
      click_button('Attack player 2')
      click_button('Attack player 1')
    end
    click_button('Attack player 2')

    expect(page).to have_content "Well done, Jane, you have won!"
  end
  scenario 'Link to starting new game is provided' do
    sign_in_and_play

    9.times do
      click_button('Attack player 2')
      click_button('Attack player 1')
    end
    click_button('Attack player 2')
    click_button('New game')

    expect(page).to have_content "Would you like to play a game?"
  end
end