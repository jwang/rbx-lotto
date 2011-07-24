Given /^I entered once already$/ do
  @entry = Factory.create(:entry)
end


Given /^I have entries$/ do
  [1,2,3].each do |i|
    entry = Factory.create(:entry, :name => "john #{i}")
  end
end

Given /^I have no more prizes$/ do
  Prize.remaining.count.should eql(0)
end

Given /^I have prizes$/ do
  @prize = Factory.create(:prize)
  Prize.count.should > 0
  Prize.count.should_not eql(0)
end