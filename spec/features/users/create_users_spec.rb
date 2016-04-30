require "rails_helper"

RSpec.feature "Creating users" do
  scenario "create a valid user" do
    visit new_user_path

    fill_in "Name", with: "Jane Doe"
    fill_in "Email", with: "jane@doe.com"
    click_button "Save"

    expect(current_path).to eq(user_path(User.last))
    expect(page).to have_content("Jane Doe")
    expect(page).to have_content("jane@doe.com")
  end
end
