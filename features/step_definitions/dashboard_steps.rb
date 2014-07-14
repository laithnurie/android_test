Given(/^I am on the main Dashboard$/) do

  steps %Q{
    Then I should see "Manga"
    And I should see "Travel"
    Then I should see 2 buttons
  }

end

Then(/^I should see (\d+) buttons$/) do |no_of_buttons|
  buttons_on_dashboard = query('Button').length
  if buttons_on_dashboard.equal? no_of_buttons.to_i
    puts "number of buttons #{query('Button').length}"
  else
    fail
  end

end

Then(/^I am on manga activity$/) do
  wait_for(:timeout => 5) { element_exists("Button id:'narutoBtn'") }
end

Then(/^I press (.*) button$/) do |manga_item|
  touch("Button id:'#{manga_item}Btn'")
end

Then(/^I should see naruto mangas$/) do
  wait_for(:timeout => 5) { element_exists("Textview id:'chapter'") }
  true if query("Textview id:'chapter'").length > 3
end