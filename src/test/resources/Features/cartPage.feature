Feature: cart Page Functionality
  Background:
    Given User navigate to URL

  Scenario: adding and removing product into cart
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    Then Check quantity of six product add into cart
    When When User click on "cart_logo"
    Then User is able to see "remove_sauce_labs_backpack_button"
    And User is able to see "remove_sauce_labs_bolt_t_shirt_button"
    And User is able to see "remove_test_all_the_things_t_shirt_red_button"
    And User is able to see "remove_sauce_labs_fleece_jacket_button"
    And User is able to see "remove_sauce_labs_bike_light_button"
    And User is able to see "remove_sauce_labs_onesie_button"