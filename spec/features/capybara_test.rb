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

describe 'signup/login/logout' do
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
    expect(page).to have_content 'This person is not a member.'
  end
  it 'can edit the event' do
    click_link 'Squirrel Fest 15'
    click_link 'Edit'
    expect(page).to have_content 'Editing event'
    fill_in 'Name', with: 'Prince Fest 15'
    fill_in 'Start date', with: '2015-05-15'
    fill_in 'End date', with: '2015-05-20'
    fill_in 'Location', with: 'Minneapolis'
    click_button 'Update Event'
    expect(page).to have_content 'Event: Prince Fest 15'
  end
  # it 'can add expenses to event' do
  #   click_link 'Prince Fest 15'
  #   click_link 'Add Expense'
  #   fill_in 'Item', with: 'Bottle of whiskey'
  #   fill_in 'Amount', with: '65'
  #   fill_in 'Description', with: 'A delicious bottle of Buffalo Trace'
  #   choose 'expense_calculation_type_groceries'
  #   click_button 'Create Expense'
  #   expect(page).to have_content 'Bottle of whiskey, $65.00'
  # end
end

describe 'user page' do
  before :each do
      visit root_path
      fill_in 'Email', with: 'user@example.com'
      fill_in 'Password', with: 'guest'
      click_button 'Login'

    end
  it 'can edit the user profile' do
    click_link 'Edit Profile'
    expect(page).to have_content 'Editing user'
    fill_in 'Name', with: ''
    fill_in 'Name', with: 'Buffalo'
    fill_in 'Password', with: 'guest'
    fill_in 'Confirmation', with: 'guest'
    click_button 'Update User'
    expect(page).to have_content 'Name:Buffalo'
  end
end
