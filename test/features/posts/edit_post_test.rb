require "test_helper"

feature "Edit a post" do
  scenario "update existing post" do
    sign_in
    visit post_path(posts(:one))
    click_on 'Edit'
    fill_in 'Title', with: posts(:post_edit).title
    fill_in 'Body', with: posts(:post_edit).body
    click_on 'Update Post'
    page.text.must_include posts(:post_edit).title
    page.text.must_include posts(:post_edit).body
    page.text.must_include 'Post was successfully updated'
  end
end
