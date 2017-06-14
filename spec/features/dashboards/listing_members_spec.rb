require "rails_helper"

RSpec.feature "Listing Members" do
  
  before do
    @john = User.create(first_name: "John",
                        last_name: "Doe",
                        email: "john@example.com",
                        password: "12341234")
                        
    @sarah = User.create(first_name: "Sarah",
                         last_name: "Jones",
                         email: "sarah@example.com",
                         password: "12341234")
  end
  
  scenario "shows a list of registered members" do
    visit "/"
    
    expect(page).to have_content("List of Members")
    expect(page).to have_content(@john.full_name)
    expect(page).to have_content(@sarah.full_name)
  end
end