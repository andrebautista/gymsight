require 'test_helper'

feature "Existing admin can sign in" do
  scenario "successfully signed in" do
    visit new_admin_session_path
    fill_in "Email", with: admins(:admin).email
    fill_in "Password", with: "password"
    click_on "Sign in"
    save_and_open_page
    page.must_have_content "Signed in successfully"
  end
end

