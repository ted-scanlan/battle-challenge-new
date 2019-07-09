

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Enter Names'
  end
end

feature 'Enable players to enter names' do
  scenario 'testing name input from form' do
    visit('/')
    expect(page).to have_content('Enter Names')
    fill_in 'player_1', with: 'Bob'
    fill_in 'player_2', with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content "Welcome to Battle, Bob & Dave!"
  end


end

feature 'hit points' do
  scenario 'can display player 1 hit points' do
    visit('/')
    expect(page).to have_content('Enter Names')
    fill_in 'player_1', with: 'Bob'
    click_button 'Submit'
      expect(page).to have_content "Bob HB points = 60"

  end
  scenario 'can display player 2 hit points' do
    visit('/')
    expect(page).to have_content('Enter Names')
    fill_in 'player_2', with: 'Dave'
    click_button 'Submit'
      expect(page).to have_content "Dave HB points = 60"

  end
end
