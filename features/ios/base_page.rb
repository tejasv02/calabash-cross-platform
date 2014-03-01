require 'calabash-cucumber/cucumber'

class BasePage < Calabash::IBase
  #
  #def initialize
  #
  #end

  def method_missing sym, *args, &block
    send sym, *args, &block
  end

  def welcome_page
    @welcome_page ||=page(WelcomePage)
  end

  def login_page
    @login_page ||=page(LoginPage)
  end



end
