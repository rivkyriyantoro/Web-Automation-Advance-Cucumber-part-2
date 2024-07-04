Feature: Saucedemo login

  Scenario: Success login using standard user
    Given user is on Saucedemo homepage
    When user login using "standard_user" as username and "secret_sauce" as password
    Then user should see "Swag labs" text displayed
