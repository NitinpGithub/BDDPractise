Feature: Home Page Functionality
  Background:
    Given User navigate to URL

  Scenario: navigate to home page
    Then User is able to see "username_field"
    And User is able to see "password_field"
    And User is able to see "loginButton_field"
    And User is able to see "page_title"

  Scenario: after successful login
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User should be logged in successfully
