require 'test_helper'

feature "Unpublished posts have limited audience" do
  scenario "admin can view unpublished post" do
    sign_in
    visit posts_path
    page.text.must_include posts(:unpublished).title
  end

  scenario "viewer can't see unpublished post" do
    visit posts_path
    page.text.wont_include posts(:unpublished).title
  end
end




