require 'rails_helper'

RSpec.feature "Signup users" do

  scenario "with valid credentials" do
    visit "/"
    
    click_link "Sign up"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "12341234"
    fill_in "Password confirmation", with: "12341234"
    click_button "Sign up"
    
    expect(page).to have_content("You have signed up successfully.")
  end
end