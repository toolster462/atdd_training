Feature: addition

  Scenario Outline: addition properties
    When I add <num1> and <num2>
    Then I get <result>
    And it is the <property> property of addition
  Examples:
    |num1|num2|result|property|
    |3   |4   |7     |commutative|
    |4   |3   |7     |commutative|
    |5   |0   |5     |identity   |