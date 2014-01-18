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

  performAction('set_text', 'css', "input##{id}",text)

end