require 'test_helper'

class UserTest < ActiveSupport::TestCase
  describe User do 
    it "has a valid factory" do 
      FactoryGirl.create(:user).must_be :valid?
    end
  end
end
