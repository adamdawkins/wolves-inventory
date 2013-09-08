require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  describe SessionsController do

    describe "POST create" do 
      describe "username parameter is nil" do
        before { post :create, username: nil, password: 'password' }

        it "renders the new template" do
          assert_template :new
        end

        it "provides an error message" do 
          (flash[:error]).must_equal "We couldn't find a user with that username."
        end

      end

      describe "with correct credentials" do
        before do
          user = FactoryGirl.create :user
          post :create, username: user.username, password: user.password
        end

        it "redirects to the root path" do
          assert_redirected_to root_path
        end
        
        it "creates a user_id in the session" do
          pending
          (session[:user_id]).wont_equal nil
        end

      end 
    end

  end
end
