Feature: Contest over
  In order to hand out awesome prizes
  As a admin user
  I want to pick the winners for the prizes
  
  Scenario: Pick the winners
    Given I am a logged in admin user
    And I have entries
    And I have prizes
    When I go to the home page
    And I press "Pick a winner"
    Then I should see "Winner is"
    And I should see "Pick a winner" button

  Scenario: No More Prizes
    Given I am a logged in admin user
    And I have entries
    And I have no more prizes
    When I go to the home page
    Then I should see "Sorry, no more prizes to hand out."
  
#  Scenario: Attendees can't pick winners
#    Given I am an attendee
#    When I go to the home page
#    Then I should not see "Pick a winner" button
  
