feature 'taking turns' do
  scenario 'end pl1 turn, start pl2 turn' do
    sign_in_and_play
    click_button('Attack Mittens')
    expect(page).to have_content 'Current turn - Dave'
  end
end
