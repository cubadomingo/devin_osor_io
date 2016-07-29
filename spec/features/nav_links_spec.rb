require "spec_helper"

RSpec.feature "Checks navbar links" do
  before(:each) do
    Capybara.current_session.driver.header('User-Agent', 'Mac')
  end

  scenario "brand link works" do
    visit root_path
    click_on "Devin_Osorio"
    assert page.current_path == root_path
  end
end
