require "test_helper"

feature "Can access homepage" do
  scenario "displays the homepage headline" do
    visit root_path
    page.text.must_include "hello world"
  end
end

