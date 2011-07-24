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