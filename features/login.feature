Feature: Login

#  @test1
#  Scenario: Login into Wordpress app
#    When I see the text "Start blogging in seconds"
#    When I press the "Start a new blog at WordPress.com" button
#    Then I wait for 5 seconds
#    Then I enter "testtest@nomail.com" into "email" field of login page
#    Then I wait for 5 seconds

  @test1
  Scenario: Enter details into sign up page
    Given I see "Start blogging in seconds"
    When I press the "Start a new blog at WordPress.com" button
    Then I wait for 5 seconds
    Then I enter "test12121122" into username field of login page
    Then I wait for 5 seconds
