Feature: Admin Create contest
  In order to let people enter contests
  As a admin user
  I want create contests
  
  
  Scenario: Admin login
  Given I am an admin user
  When I go to the login page
  And I enter my credentials
  Then I should be on the home page
  
#  Scenario: Create a Contest
#    Given I am an admin user
#    When I go to the admin page
#    Then I should see "Contests"
#    And I click "Contests"
