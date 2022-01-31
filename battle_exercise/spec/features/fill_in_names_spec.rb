feature 'Can fill names' do
  scenario 'Can fill in then see names' do
    visit('/')
    fill_in('Player 1', with: 'Jane')
    fill_in('Player 2', with: 'John')
    click_button('Start game!')
    expect(page).to have_content 'Hello there, Jane and John, are you ready to play?'
  end
end