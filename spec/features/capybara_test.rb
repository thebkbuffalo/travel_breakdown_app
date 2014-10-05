require 'rails_helper'

 User.destroy_all

# describe "the signin process", :type => :feature do
#   before :each do
#     User.make(:email => 'user@example.com', :password => 'caplin')
#   end
#
#   it "signs me in" do
#     visit '/sessions/new'
#     within("#session") do
#       fill_in 'Email', :with => 'user@example.com'
#       fill_in 'Password', :with => 'password'
#     end
#     click_button 'Sign in'
#     expect(page).to have_content 'Success'
#   end
# end

describe 'User creates boat trip' do
  it 'can signup/create profile' do
    visit root_path

    click_link 'Sign up'
    expect(page).to have_content 'Confirmation'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Name', with: 'will'
    fill_in 'Password', with: 'guest'
    fill_in 'Confirmation', with: 'guest'
    click_button 'Create User'
    expect(page).to have_content 'will'
  end

  it 'can login/logout' do
    visit root_path
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'guest'
    click_button 'Login'
    expect(page).to have_content 'Logout'
    click_link 'Logout'
    expect(page).to have_content 'Login'
  end
end

describe 'new event' do
  before :each do
    visit root_path
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'guest'
    click_button 'Login'
    expect(page).to have_content 'Logout'
  end

  it 'can create a new event' do
    click_link 'New Event'
    expect(page).to have_content 'New event'

    fill_in 'Name', with: 'Squirrel Fest 15'
    fill_in 'Start date', with: '2014-10-15'
    fill_in 'End date', with: '2014-10-21'
    fill_in 'Location', with: 'D.C.'
    click_button 'Create Event'
    expect(page).to have_content 'Event: Squirrel Fest 15'
  end
  it 'can invite friends' do
    click_link 'Squirrel Fest 15'
    click_link 'Invite Friends'
    expect(page).to have_content 'Email'
    fill_in 'Email', with: 'aaron@fakegmail.com'
    choose 'role_permission_friend'
    click_button 'Invite'
    expect(page).to have_content 'Squirrel Fest 15'
    click_link 'Squirrel Fest 15'
    expect(page).to have_content 'aaron@fakegmail.com'
  end
end
