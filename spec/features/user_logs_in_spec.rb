require "spec_helper"

RSpec.feature "Logging in" do

  scenario "Logging in with correct credentials" do
    user = create :user
    switch_to_subdomain("blog")
    visit '/login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'log in'
    expect(page).to have_content("log_out")
  end

  scenario "Logging in with incorrect credentials" do
    user = build :user
    switch_to_subdomain("blog")
    visit '/login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'log in'
    expect(page).to have_content("Invalid email/password combination")
  end

  scenario "User logs out" do
    user = create :user
    Capybara.current_session.driver.header('User-Agent', 'Mac')
    switch_to_subdomain("blog")
    visit '/login'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'log in'
    expect(page).to have_content("log_out")
    click_on 'log_out'
    expect(page).to have_no_content("log_out")
  end
end
