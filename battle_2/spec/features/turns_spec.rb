feature 'taking turns' do
  scenario 'at the start of the game' do
    sign_in_and_play
    expect(page).to have_content "Dave's turn"
  end

  scenario 'after player 1 attacks' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "Dave's turn"
    expect(page).to have_content "Mitten's turn"
  end
end
