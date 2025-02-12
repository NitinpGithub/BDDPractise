
Feature: User login functionality

  Scenario: After successful login
    Given User navigate to URL
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User should be logged in successfully
