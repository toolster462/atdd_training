Feature: Cart

  Scenario: Adding product to Cart
    Given the user is viewing the details of the product
    When  the user adds a product to the cart
    Then  the product is in the cart

    Scenario: Adding multiple different products to cart
      Given?
      When When the user adds multiple different products to the cart
      Then each of the products is listed in the cart

  Scenario: Adding multiple of the same products to cart
    Given?
    When When the user adds multiple of the same products to the cart
    Then the cart will list that item with the appropriate quantity

  Scenario: Change quantities of items in the cart
    Given there's an item in the cart
    When When the user changes quantities of items in the cart
    Then the quantity of items in the cart will be what the user changed it to

  Scenario: Deleting an item from the cart
    Given there's an item in the cart
    When the user deletes an item from the cart
    Then the item is no longer in the cart

  Scenario: Verifying total price of items in cart
    Given there's items in the cart
    Then the subtotal is the sum of the prices of items of the cart

    Scenario: Unable to check out while signed out
      Given the user isn't signed in
      When the user checks out
      Then the user is prompted to sign in