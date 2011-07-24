require 'spec_helper'

describe Entry do
  before (:each) do
    # create an entry using Factory Girl
    @entry = Factory.create(:entry)
  end
  
  it "should require a name" do
    entry = Factory.build(:entry, :name => nil)
    entry.should_not be_valid
  end
  
  it "should require unique names" do
    entry = Factory.build(:entry)
    entry.should_not be_valid
  end

  it "should have current entries" do
    Entry.current.count.should_not eql(0)
  end

  it "should have winners" do
    @entry.won = true
    @entry.save
    Entry.winners.count.should_not eql(0)
  end
  
  it "can pick winners" do
    winner = Entry.pick_winner
    winner.should_not be_nil
    Entry.winners.should_not include(winner)
    winner.won = true
    winner.save
    Entry.winners.should include(winner)
  end
  
end
