require 'calabash-android/abase'

class WelcomePage < BasePage

  def trait
    "* marked:'Start blogging in seconds.'"
  end

  #def await
  #  sleep 2
  #  #self
  #end

  def wait_for_welcome_screen
    wait_for_elements_exist([trait])
  end

  def navigate_to_login
    click_on_text "Add self-hosted WordPress blog"
    #touch "* marked:'Add self-hosted WordPress blog'"
  end


end