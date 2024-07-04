Feature: Saucedemo login 2

  Scenario: Success login using standard user 2
    Given user is on Saucedemo homepage
    When user login using "standard_user" as username and "secret_sauce" as password
    Then user should see "Swag labs" text displayed
