require "test_helper"

feature "Deletes an existing post" do
  scenario "post successfully deleted" do
    sign_in
    @post_value= posts(:one).id
    visit posts_path
    click_link('Destroy', href: "/posts/#{@post_value}")
    page.wont_have_content posts(:one)
  end
end


