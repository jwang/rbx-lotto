Before do
  @user = Factory.create(:user)
end

Given /^I am an admin user$/ do
  @user.admin?.should be_true
end

Given /^I am an attendee$/ do
end

When /^I enter my credentials$/ do
  And %{I fill in "user_email" with "#{@user.email}"}
  And %{I fill in "user_password" with "#{@user.password}"}
  And %{I press "Sign in"}
end

Given /^I am a logged in admin user$/ do
  Given %{I am an admin user}
  When %{I go to the login page}
  And %{I enter my credentials}
  Then %{I should be on the home page}
end