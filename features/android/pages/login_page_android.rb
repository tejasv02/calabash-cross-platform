#class LoginPage < Calabash::ABase
class LoginPage < BasePage

  def await
    wait_for_elements_exist(["* marked:'ACCOUNT DETAILS'"])
  end

end