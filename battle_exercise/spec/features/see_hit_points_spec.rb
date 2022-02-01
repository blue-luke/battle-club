feature 'See hit points' do
  scenario 'Can fill in names then see hit points' do
    visit('/')

    fill_in('Player 1', with: 'Jane')
    fill_in('Player 2', with: 'John')
    click_button('Start game!')

    expect(page).to have_content 'John has 100 HP'
  end
end