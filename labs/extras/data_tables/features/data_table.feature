Feature: data tables

  Scenario: passing a list to a step
    When I have this list
      |numbers|
      |1|
      |2|
      |3|
      |4|
    Then the result is 10

  Scenario: passing fields to a step
    When I have the following input
      |num1|1|
      |num2|2|
    Then the result is 3

  Scenario: passing several rows of the same data
    When I have the following rows
      |num1|num2|
      |10  |2   |
      |3   |9   |
      |6   |6   |
    Then I get the same result for all