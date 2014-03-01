Then(/^I must see home page$/) do

  if (element_exists "* id:'postDetailFragmentContainer'") != true
    fail "user not on home page"
  end
  #wait_for(10) { element_exists "* id:'postDetailFragmentContainer'" }
end

Given(/^I am on home page$/) do
  sleep 3

  if (element_exists "* id:'postDetailFragmentContainer'") == true
    puts "user is already on  home page"
  else
    step 'I am on login page'
    step 'I sign in with my credentials on login page'
    step 'I must see home page'
  end
end


When(/^I sign out from application$/) do
  sleep 1
  performAction("press_menu")

  id="button1"
  text = 'Sign out'
  fail("Sign out is not shown") if query("* id:'#{id}'", :text)[0] != text


  #id=button1
  #if query("* id:'#{id}'",:text)[0]!= 'Sign out'
  #  fail "#{id} not present"
  #end

  sleep 1
  touch "* text:'Sign out'"
  sleep 1
  touch "button text:'Sign out'"
  sleep 1
end


When(/^I create a new post with title "([^"]*)"$/) do |arg|
  touch "* id:'menu_new_post'"
  sleep 1
  step 'I enter "'+arg+'" into input field number 1'
  step 'I enter "description" into input field number 2'
  sleep 1
  touch "* id:'menu_edit_post'"
  sleep 2
  @post_title=arg
end

Then(/^I must see it is published$/) do
  fail("Post not published") if query("* id:'postList' LinearLayout index:2 TextView",:text)[0] != @post_title
end