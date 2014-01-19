Then(/^I enter "([^"]*)" into username field of login page$/) do |arg|
  performAction('set_text', 'css', "input#user_name",arg)
end