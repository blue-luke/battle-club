feature 'Attacking a player' do
  scenario 'Geting confirmation' do
    sign_in_and_play

    click_button('Attack player 2')

    expect(page).to have_content 'John has 90 HP'
  end
end