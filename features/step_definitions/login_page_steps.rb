Then(/^I enter "([^"]*)" into username field of login page$/) do |arg|
  performAction('set_text', 'css', "input#user_name",arg)
end

When(/^I sign in with my credentials on login page$/) do
  step 'I enter "calabashtest.wordpress.com" into input field number 1'
  step 'I enter "userdea@gmail.com" into input field number 2'
  step 'I enter "Mypass123" into input field number 3'
  BasePage.new(self).click_on_text("Sign In")
  #step 'I press the "Sign In" button'
  step "I wait for 10 seconds"
end