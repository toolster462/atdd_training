Feature: Multiplication
  As a mathematician
  I want my calculator to multiply numbers
  So I can know its total

  Scenario: multiplying numbers to get a total
    When I multiply two numbers
    Then I get the total

  Scenario: multiply by zero
    When I multiply a number by zero
    Then the total is zero


