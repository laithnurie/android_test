Feature: Login feature

  Scenario: I should see dashboard items
    Given I am on the main Dashboard
    And I should see 2 buttons
    And I press "Manga"
    Then I am on manga activity
    Then I should see 3 buttons

  Scenario: I should see mangas
    Given I am on the main Dashboard
    And I press "Manga"
    Then I am on manga activity
    Then I press naruto button
    Then I should see naruto mangas