def sign_in_and_play
  visit('/')
  fill_in 'player_1', with: 'Bob'
  fill_in 'player_2', with: 'Dave'
  click_button 'Submit'
end

def reaching_zero_hit_points
  click_button('Attack!')
  click_link('OK')
  click_button('Attack!')
  click_link('OK')
  click_button('Attack!')
  click_link('OK')
  click_button('Attack!')
  click_link('OK')
  click_button('Attack!')
  click_link('OK')
  click_button('Attack!')
  click_link('OK')
end