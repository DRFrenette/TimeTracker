require "spec_helper"

describe "account creation" do
  it "allows a user to create an account" do
    visit root_path
    click_link "Create Account"

    fill_in "Name", with: "Dan"
    fill_in "Email", with: "Dan.R.Frenette@gmail.com"
    fill_in "Password", with: "pw"
    fill_in "Password confirmation", with: "pw"
    fill_in "Subdomain", with: "test_subdomain"
    click_button "Create Account"

    expect(page).to have_content("Signed up successfully!")
  end
end
