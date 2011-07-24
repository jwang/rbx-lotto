require 'spec_helper'

describe Prize do
  before (:each) do
    # create an entry using Factory Girl
    @prize = Factory.create(:prize)
  end
  
  it "should have a name" do
    @prize.name.should_not be_empty
  end
  
  it "should have an amount" do
    @prize.amount.should_not eql(0)
  end
  
  it "can have a description" do
    @prize.should respond_to(:description)
  end
  
  it "should require name and amount" do
    prize = Factory.build(:prize, :name => nil, :amount => nil)
    prize.should_not be_valid
  end
  
end
