feature 'State next turn' do
  scenario 'A winner is announced' do
    sign_in_and_play

    9.times do
      click_button('Attack!')
      click_button('Attack!')
    end
    click_button('Attack!')

    expect(page).to have_content "Well done, Jane, you have won!"
  end
  scenario 'Redirected to index to start a new game' do
    sign_in_and_play

    9.times do
      click_button('Attack!')
      click_button('Attack!')
    end
    click_button('Attack!')
    click_button('New game')

    expect(page).to have_content "Would you like to play a game?"
  end
end