feature 'Attacking a player' do
  scenario 'Geting confirmation' do
    sign_in_and_play

    click_button('Attack John')

    expect(page).to have_content 'Jane attacked John'
    expect(page).to have_content 'John has 100 HP'
  end
end