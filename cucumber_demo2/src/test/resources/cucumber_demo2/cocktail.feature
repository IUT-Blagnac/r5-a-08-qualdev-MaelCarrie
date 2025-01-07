Feature: Cocktail Ordering
  As Romeo, I want to offer a drink to Juliette so that we can discuss together (and maybe more).

  Scenario: Creating an empty order
    Given "Romeo" who wants to buy a drink
    When an order is declared for "Juliette"
    Then there are 0 cocktails in the order

  Scenario Outline: Creating an empty order
    Given "<from>" who wants to buy a drink
    When an order is declared for "<to>"
    Then there are <nbCocktails> cocktails in the order

    Examples:
      | from  | to       | nbCocktails |
      | Romeo | Juliette |           0 |
      | Tom   | Jerry    |           0 |
