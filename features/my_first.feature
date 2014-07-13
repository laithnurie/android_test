Feature: Login feature

  Scenario: I should see dashboard items
    Given I am on the main Dashboard
    Then I press "Manga"
    Then I should see "Naruto"
    Then I should see "Bleach"
    Then I should see "Naruto"
