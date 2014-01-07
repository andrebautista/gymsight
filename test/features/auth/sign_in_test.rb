require 'test_helper'

feature "Admin can sign in" do
  scenario "successfully signed in" do
    visit new_admin_session_path
    fill_in "Email", with: admins(:admin).email
    fill_in "Password", with: "password"
    click_on "Sign in"
    page.must_have_content "Signed in successfully"
    page.text.wont_include "Sign In"
    page.must_have_content "Sign Out"
  end
end

