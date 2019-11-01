feature 'attacking' do
  scenario 'hitting player 2' do
    sign_in_and_play
    attack_and_ok
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduce player2 HP by 10' do
    sign_in_and_play
    attack_and_ok
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end
