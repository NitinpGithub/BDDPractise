Feature: Check Out Functionality
  Background:
    Given User navigate to URL


  Scenario: adding product into cart
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    Then User is able to see "remove_sauce_labs_backpack_button"
    And User is able to see "remove_sauce_labs_bolt_t_shirt_button"
    And User is able to see "remove_test_all_the_things_t_shirt_red_button"
    And User is able to see "remove_sauce_labs_fleece_jacket_button"
    And User is able to see "remove_sauce_labs_bike_light_button"
    And User is able to see "remove_sauce_labs_onesie_button"

  Scenario: validate check out button
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User is able to see "check_out_button"

  Scenario: verify check out information options
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User is able to see "continue_button"
    And User is able to see "first_name_field"
    And User is able to see "last_name_field"
    And User is able to see "postal_code_field"

  Scenario: verify all valid field in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "Nitin" into "first_name_field"
    And User enter "Patil" into "last_name_field"
    And User enter "112233" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "finish_button"
    And User is able to see "cancle_button"

  Scenario: only valid first name in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "Nitin" into "first_name_field"
    And User enter "" into "last_name_field"
    And User enter "" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "error_message_for_valid_first_name"

  Scenario: only valid last name in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "" into "first_name_field"
    And User enter "Patil" into "last_name_field"
    And User enter "" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "error_message_for_valid_first_name"

  Scenario: only valid zip code in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "" into "first_name_field"
    And User enter "" into "last_name_field"
    And User enter "112233" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "error_message_for_valid_first_name"

  Scenario: all blank field in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "" into "first_name_field"
    And User enter "" into "last_name_field"
    And User enter "" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "error_message_for_valid_first_name"

  Scenario: only empty zipCode in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "Nitin" into "first_name_field"
    And User enter "Patil" into "last_name_field"
    And User enter "" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "error_message_for_valid_first_name"

  Scenario: only empty first name in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "" into "first_name_field"
    And User enter "Patil" into "last_name_field"
    And User enter "112233" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "error_message_for_valid_first_name"

  Scenario: only empty last name in check out information
    When User enter credential in "username_field" as "username"
    And User enter credential in "password_field" as "password"
    And User clicks on "loginButton_field"
    Then User add "sauce_labs_fleece_jacket" into cart
    And User add "sauce_labs_backpack" into cart
    And User add "sauce_labs_bolt_t_shirt" into cart
    And User add "test_all_the_things_t_shirt_red" into cart
    And User add "sauce_labs_bike_light" into cart
    And User add "sauce_labs_onesie" into cart
    When When User click on "cart_logo"
    Then User click on "check_out_button"
    Then User enter "Nitin" into "first_name_field"
    And User enter "" into "last_name_field"
    And User enter "112233" into "postal_code_field"
    When User click on "continue_button"
    Then User is able to see "error_message_for_valid_first_name"

#  Scenario: check out all information before order place
#    When User enter credential in "username_field" as "username"
#    And User enter credential in "password_field" as "password"
#    And User clicks on "loginButton_field"
#    Then User add "sauce_labs_fleece_jacket" into cart and get price
#    And User add "sauce_labs_backpack" into cart and get price
#    And User add "sauce_labs_bolt_t_shirt" into cart and get price
#    And User add "test_all_the_things_t_shirt_red" into cart and get price
#    And User add "sauce_labs_bike_light" into cart and get price
#    And User add "sauce_labs_onesie" into cart and get price
#    When When User click on "cart_logo"
#    Then User click on "check_out_button"
#    Then User enter "Nitin" into "first_name_field"
#    And User enter "Patil" into "last_name_field"
#    And User enter "112233" into "postal_code_field"
#    When User click on "continue_button"
#    Then User validate actual price
#    And User validate total price
#
#  Scenario: check out all information before order place
#    When User enter credential in "username_field" as "username"
#    And User enter credential in "password_field" as "password"
#    And User clicks on "loginButton_field"
#    Then User add "sauce_labs_fleece_jacket" into cart and get price
#    And User add "sauce_labs_backpack" into cart and get price
#    And User add "sauce_labs_bolt_t_shirt" into cart and get price
#    And User add "test_all_the_things_t_shirt_red" into cart and get price
#    And User add "sauce_labs_bike_light" into cart and get price
#    And User add "sauce_labs_onesie" into cart and get price
#    When When User click on "cart_logo"
#    Then User click on "check_out_button"
#    Then User enter "Nitin" into "first_name_field"
#    And User enter "Patil" into "last_name_field"
#    And User enter "112233" into "postal_code_field"
#    When User click on "continue_button"
#    Then User validate actual price
#    And User validate total price
#    And User is able to see "finish_button"
#    When User click on "finish_button"
#    Then User is able to see "order_successful_message"








