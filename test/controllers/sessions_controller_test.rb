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


      end 
    end

  end
end
