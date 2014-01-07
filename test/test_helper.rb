ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "capybara/webkit"

#colorful test output
require "minitest/pride"
require 'simplecov'
SimpleCov.start

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  fixtures :all

  def sign_in
    visit new_admin_session_path
    fill_in "Email", with: admins(:admin).email
    fill_in "Password", with: "password"
    click_on "Sign in"
  end
  # Add more helper methods to be used by all tests here...
end
