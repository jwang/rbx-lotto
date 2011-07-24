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
  [1,2,3].each do |i|
    prize = Factory.create(:prize, :name => "prize ##{i}")
  end
  Prize.count.should > 0
  Prize.count.should_not eql(0)
end

Then /^I should see "([^"]*)" button$/ do |arg1|
  find_button(arg1).should_not be_nil
end
