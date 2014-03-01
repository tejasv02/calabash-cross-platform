## Invalid login ##
Given /^I am about to login$/ do
end


Then(/^I enter "([^"]*)" into "([^"]*)" field of login page$/) do |text, arg|
  id=nil
  case arg
    when "email"
      id="user_email"
    when "username"
      id="user_name"
    when "password"
      id="pass1"
  end

  performAction('set_text', 'css', "input##{id}", text)

end

Given(/^I am on login page$/) do
  #WelcomePage.new(self).wait_for_welcome_screen
  #WelcomePage.new(self).navigate_to_login

  @page=page(BasePage)
  @page.welcome_page.wait_for_welcome_screen
  @page.welcome_page.navigate_to_login
  LoginPage.new(self).await

#
#step 'I see "Start blogging in seconds"'
#step 'I press the "Add self-hosted WordPress blog" button'
#step 'I wait for 5 seconds'
#step 'I wait to see "ACCOUNT DETAILS"'

#@page=page(BasePage)
#
#@page.welcome_page.wait_for_welcome_screen
#@page.welcome_page.navigate_to_login
#@page.login_page.await
#
#@page.welcome_page.check_login_page
#@page.login_page.await

#page(WelcomePage).await
#page(WelcomePage).navigate_to_login
#page(LoginPage).check_login_page


#@welcomePage.wait_for_screen
#@welcomePage.navigate_to_login
#@loginPage.check_login_page
#
#
#step 'I see "Start blogging in seconds"'
#step 'I press the "Add self-hosted WordPress blog" button'
#step 'I wait for 5 seconds'
#step 'I wait to see "ACCOUNT DETAILS"'
end

When(/^I enter my details in login page$/) do
  step 'I enter "userdea@gmail.com" into "email" field of login page'
  step 'I enter "Mypass123" into "password" field of login page'
  step 'I enter "'+@save_value+'" into "username" field of login page'
end

Given(/^I am on login page as "([^"]*)" as username$/) do |arg|
  step 'I see "Start blogging in seconds"'
  step 'I press the "Start a new blog at WordPress.com" button'
  step 'I wait for 5 seconds'
  @save_value=arg
end

Then(/^I must see welcome page$/) do
  step 'I see "Start blogging in seconds"'
end