require 'test_helper'

class LoginTest < ActionDispatch::IntegrationTest
  before { visit login_path}

  describe "the login page" do

    it "has a username email field" do
      page.must_have_field("username")
    end

    it "has a password field" do
      page.must_have_field("password")
    end

    it "has a log in button" do
      page.must_have_button("Log in")
    end
  end

  describe "logging in" do
    describe "with successful credentials" do
      before do
        fill_in "username", with: "jmontague" 
        fill_in "password", with: "james" 
        click_button "Log in"
      end

      it "takes you to the homepage" do
        current_path.must_equal root_path
      end

      it "displays a logged in message" do
        pending
        page.must_have_content "You have logged in successfully"
      end

    end
  end

end
