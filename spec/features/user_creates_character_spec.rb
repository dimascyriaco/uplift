require 'spec_helper'

feature 'User creates Character' do
  scenario 'Creating an Character with a name' do
    visit new_character_path

    fill_in 'Name', with: 'jdoe'
    fill_in 'St', with: 10
    fill_in 'Dx', with: 10
    fill_in 'Iq', with: 10
    fill_in 'Ht', with: 10
    click_button 'Create'

    expect(page).to have_selector('.name', :text => 'jdoe')
  end
end