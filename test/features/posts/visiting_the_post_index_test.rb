require "test_helper"

feature "Visiting The Post Index" do
  scenario "with existing posts, show all" do
    #Given existing posts
    #When I visit /posts
    visit posts_path
    #Then the existing posts should be loaded
    page.must_have_content "Post 1"
    page.must_have_content "Post 2"
  end
end
