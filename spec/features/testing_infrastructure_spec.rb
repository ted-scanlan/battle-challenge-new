feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter Names'
  end
end

feature 'Enable players to enter names' do
  scenario 'testing name input from form' do
    sign_in_and_play
    expect(page).to have_content "Welcome to Battle, Bob & Dave!"
  end
end

feature 'hit points' do
  scenario 'can display player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content "Bob HB points = 60"
  end

  scenario 'can display player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Dave HB points = 60"
  end
end

feature 'attack a player' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content "Bob attacked Dave"
  end
end

feature 'attack reduces oppenents hit points' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button('Attack!')
    click_link('OK')
    expect(page).to have_content "Dave HB points = 50"
  end
end

feature 'Enables players to switch turns' do
  scenario 'it switches from player 1 to player 2' do
    sign_in_and_play
    click_button('Player 2')
    click_button('Attack!')
    click_link('OK')
    expect(page).to have_content "Bob HB points = 50"
  end
end

feature 'Ends the game when player 1 or player 2 hit points reach 0' do
  scenario 'it ends the game' do
    sign_in_and_play
    reaching_zero_hit_points
    expect(page).to have_content "Dave is dead! Bob Wins!"
  end
end
 