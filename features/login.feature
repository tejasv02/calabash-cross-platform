Feature: Login

  @test1
  Scenario: Login into Wordpress app
    When I see the text "Start blogging in seconds"
    When I press the "Start a new blog at WordPress.com" button
    Then I wait for 5 seconds
    Then I enter "testtest@nomail.com" into input field number 1
    Then I wait for 5 seconds
