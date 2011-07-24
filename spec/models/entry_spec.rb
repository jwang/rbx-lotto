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

  
end
