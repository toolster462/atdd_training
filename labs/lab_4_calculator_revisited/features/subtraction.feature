Feature: Subtraction
  As a mathematician
  I want my calculator to subtract numbers
  So I can know its balance

  Scenario: Subtracting numbers to get a balance
    When I subtract two numbers
    Then I get the balance

  Scenario: Subtract zero
    When I subtract zero from a number
    Then the balance is that number

  Scenario: Subtract numbers in different orders
    When I subtract the same numbers in different orders
    Then the balance will not be the same

#  Scenario: Subtracting more than two numbers
#    When I subtract more than two numbers
#    Then I get the total
