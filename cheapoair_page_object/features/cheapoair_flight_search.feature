Feature: cheapoair flight search functionality

#  Background:
#    Given user is on cheapoair homepage

# Imperative
  Scenario: verify user is able to search for the available flights for a future dates
    Given user is on the cheapoair home page
    When user selects the flights tab
    And user search for "columbus" city and selects "CMH" airport for departure
    And user search for "cleveland" city and selects "CLE" airport for arrival
    And user choose future dates for the arrival and departure dates
    And search for the available flights
    Then verify user should see the available flights
    And verify user gets the flight results for the selected dep date

# Declarative
  Scenario: verify user is able to search for the available flights for a future dates in declarative style
    Given user is on the cheapoair home page
    When user search for the available flights for the future dates
    Then verify user should see the avialable flights
    And verify user gets the flight results for the selected dep date

  Scenario Outline: verify user is able to search for the available flights for a future dates for different destinations
    Given user is on the cheapoair home page
    When user selects the flights tab
    And user choose round trip option
    And user search for <dep_city_name> city and selects <dep_airport_name> airport for departure
    And user search for <arr_city_name> city and selects <arr_airport_name> airport for arrival
    And user choose future dates for the arrival and departure dates
    And search for the available flights
    Then verify user should see the avialable flights
    And verify user gets the flight results for the selected dep date
    Examples:
      | dep_city_name | dep_airport_name | arr_city_name | arr_airport_name |
      | columbus      | CMH              | Cleveland     | CLE              |
      | chicago       | ORD              | Tolerodo      | TOL              |


  Scenario: verify user is able to validate the mandatory search fields for flight search
    Given user is on the cheapoair homrpage
    When user selects the flights tab
    And user choose a roundtrip option
    And user choose future dates for arrival and departure dates
    And search for the availbilty flights
    Then user should see the "error messages"
      | Please enter a From city or airport. |
      | Please enter a To city or airport.   |
      | Please enter a Depart date.          |



