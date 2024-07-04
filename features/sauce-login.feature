@websauce
Feature: Sauce login test

   Background:
        Given user navigates to the login page
        When user enters valid credentials
        Then user should be logged in successfully

    Scenario: Validate user are in the dashboard
        Given user is logged in
        When user navigate to dashboard
        Then user should be on the dashboard page

    Scenario: Add item to cart
        Given user is on the dashboard page
        When user adds an item to the cart
        Then the item should be added successfully

    Scenario: Confirm that the item has been successfully added to the cart
        Given user has added an item to the cart
        When user navigates to the cart
        Then the cart should contain the added item
