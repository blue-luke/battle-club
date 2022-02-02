feature 'Attacking a player' do
  scenario 'Sucessfully attack' do
    allow_any_instance_of(Player).to receive(:calculate_damage).and_return(10)
    
    sign_in_and_play

    click_button('Attack!')

    expect(page).to have_content 'John has 90 HP'
  end
  scenario 'Successfully defend player 1' do
    sign_in_and_play

    click_button('Defend!')
    click_button('Attack!')

    expect(page).to have_content 'Jane has 100 HP'
  end
  scenario 'Successfully defend player 2' do
    allow_any_instance_of(Player).to receive(:calculate_damage).and_return(10)

    sign_in_and_play

    click_button('Attack!')
    click_button('Defend!')
    allow_any_instance_of(Player).to receive(:calculate_damage).and_call_original
    click_button('Attack!')

    expect(page).to have_content 'John has 90 HP'
  end
end