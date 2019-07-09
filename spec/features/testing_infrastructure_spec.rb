

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
    fill_in 'nameone', with: 'Bob'
    fill_in 'nametwo', with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content "Welcome to Battle, Bob & Dave!"
  end

  
end
