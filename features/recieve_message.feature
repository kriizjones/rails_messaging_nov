Feature: Recieve message
  As a User
  I can see the message in the inbox

  Background:
    Given that there is a user named "Test-User"
    And "Test-User" is logged in
    And that there is a user named "Belle"
    And I am on the "inbox" page
    And I click "Compose"

  Scenario:
    When I select "Belle" from recipients
    And I fill in "Subject" with "subject"
    And I fill in "Message" with "message to Belle"
    When I click "Send Message"
    Then I should see "Your message was successfully sent"
    When I click "Logout"
    Then I should be on the "index" page
    And I should see "Signed out successfully."
    And "Belle" is logged in
    And I am on the "inbox" page
    And I should see "Test-User"
    And I should see "subject"
    And I should see "message to Belle"

