Feature: validate the Cheapoair car Search functionality

  Scenario: validate user is able to search for available cars for the destination
    Given user is on the cheapoair home page
    When user search for the cars at cmh airport
    Then user should see the available cars for cmh