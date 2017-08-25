Feature: Search
  I want to be able to search by prime eligibility

  Scenario: All Departments menu
    When I click the 'All Departments' drop down
    Then Prime Exclusive is an option in the drop down

    Scenario: Prime Exclusive search
      Given Prime Exclusive is the selected filter
      When I search for headphones
      Then the list contains prime exclusive headphones


