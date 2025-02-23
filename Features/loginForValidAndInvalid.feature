Feature: check login for valid and invalid data
  Background:
    Given User navigate to URL
  Scenario Outline: login for valid username and password
    When User enter valid_credential in "username_field" as "<uname>"
    And User enter valid_credential in "password_field" as "<pass>"
    And User clicks on "loginButton_field"
    Then User should be logged in successfully
    Examples:
      | uname                                          | pass         |
      | standard_user                                  | secret_sauce |
      | problem_user                                   | secret_sauce |
      | performance_glitch_user                        | secret_sauce |
      | error_user                                     | secret_sauce |
      | visual_user                                    | secret_sauce |



  Scenario Outline: login for Negative tests
    When enter invalid or valid "username_field" as "<uname>"
    And enter invalid or valid "password_field" as "<pass>"
    And User clicks on "loginButton_field"
    Then User is able to see error message "<message>"

    Examples:
      | uname                                          | pass                                               | message                                                                   |
      |                                                |                                                    | Epic sadface: Username is required                                        |
      |                                                | secret_sauce                                       | Epic sadface: Username is required                                        |
      | standard_user                                  |                                                    | Epic sadface: Password is required                                        |
      | invalidUser                                    | secret_sauce                                       | Epic sadface: Username and password do not match any user in this service |
      | standard_user                                  | wrongPassword                                      | Epic sadface: Username and password do not match any user in this service |
      | invalidUser                                    | wrongPassword                                      | Epic sadface: Username and password do not match any user in this service |
      | user!@#                                        | secret_sauce                                       | Epic sadface: Username and password do not match any user in this service |
      | standard_user                                  | password!@#                                        | Epic sadface: Username and password do not match any user in this service |
      | userWithAReallyLongUsernameThatExceedsTheLimit | secret_sauce                                       | Epic sadface: Username and password do not match any user in this service |
      | standard_user                                  | passwordWithAReallyLongPasswordThatExceedsTheLimit | Epic sadface: Username and password do not match any user in this service |
      | Standard_User                                  | secret_sauce                                       | Epic sadface: Username and password do not match any user in this service |
      | standard_user                                  |   password                                         | Epic sadface: Username and password do not match any user in this service |
      | standard_user                                  |   password                                         | Epic sadface: Username and password do not match any user in this service |