require "rails_helper"

RSpec.feature "Checks navbar links" do
  before(:each) do
    Capybara.current_session.driver.header('User-Agent', 'Mac')
  end

  scenario "nav bar links are present" do
    visit root_path
    expect(page).to have_link "about", href: "/#about"
    expect(page).to have_link "skills", href: "/#skills"
    expect(page).to have_link "projects", href: "/#projects"
    expect(page).to have_link "contact", href: "/#contact"
  end

  scenario "nav bar blog link works" do
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
