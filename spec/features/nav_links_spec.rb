require "rails_helper"

RSpec.feature "Checks navbar links" do
  before(:each) do
    Capybara.current_session.driver.header('User-Agent', 'Mac')
  end

  scenario "nav bar blog link works" do
    user = create :user
    visit root_path
    first(:link, "blog").click
    assert page.current_path == blog_path
  end

  scenario "brand link works" do
    visit root_path
    click_on "Devin_Osorio"
    assert page.current_path == root_path
  end
end
