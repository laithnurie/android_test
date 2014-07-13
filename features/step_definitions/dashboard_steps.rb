Given(/^I am on the main Dashboard$/) do
  %{ Then I should see "Manga",
     And I should see "Travel"
  }
end