require 'test_helper'

feature "Admin can sign out" do
  scenario "successfully logged out" do
    #given a signed in user
    sign_in
    click_on "Sign Out"
    page.must_have_content "Signed out successfully"
    page.must_have_content "Sign In"
  end
end

