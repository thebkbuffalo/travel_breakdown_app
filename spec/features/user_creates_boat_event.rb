require 'rails_helper'

# feature 'User creates a foobar' do
#   scenario 'they see the foobar on the page' do
#     visit new_foobar_path

#     fill_in 'Name', with: 'My foobar'
#     click_button 'Create Foobar'

#     expect(page).to have_css '.foobar-name', 'My foobar'
#   end
# end

describe 'User creates boat trip' do
  it 'can signup/create profile' do
    visit root_path

    click_link 'Sign up'

    expect(page).to have_css '.new_user'
  end
end
