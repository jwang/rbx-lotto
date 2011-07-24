Feature: Enter contest
  In order to win something really awesome
  As a attendee
  I want make an entry for the contest
  
  
  Scenario: create an entry
  Given I am an attendee
  And I go to the home page
  And I fill in "entry_name" with "John Doe"
  And I press "Enter"
  Then I should see "Thanks for Entering the RBX Lottery!"
  
  Scenario: multiple entries not allowed
  Given I am an attendee
  And I go to the home page
  And I entered once already
  And I fill in "entry_name" with "John Doe"
  And I press "Enter"
  Then I should see "Sorry, only 1 entry per name is allowed. Don't be evil."
