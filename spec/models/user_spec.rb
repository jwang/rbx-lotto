require 'spec_helper'

describe User do
  before (:each) do
    # create a user using Factory Girl
    @user = Factory.create(:user)
  end
  
  it "should be able to check if user has role" do
    @user.should respond_to(:role)
  end
  
  it "should check if user is an admin" do
    @user.role.should eql("admin")
  end
end
