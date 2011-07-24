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
  
  it "should have one less amount after it is handed out" do
    [1,2,3].each do |i|
      entry = Factory.create(:entry, :name => "john #{i}")
    end
    @prize.amount.should eql(1)
    @prize.pick_winner
    @prize.amount.should eql(0)
  end
  
end
