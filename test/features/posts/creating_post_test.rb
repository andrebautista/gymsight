require "test_helper"

feature "Creating a new post" do
  scenario "post created successfully" do
    #given we're on the new posts page
    visit new_post_path
    #when I fill out and submit a post form
    fill_in "Title", with: posts(:one).title
    fill_in "Body", with: posts(:one).body
    check('Published')
    click_on "Create Post"
    #then I should see a success message
    page.text.must_include "Post was successfully created"
  end
end

