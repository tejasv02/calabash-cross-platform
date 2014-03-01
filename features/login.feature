Feature: Login

  @test
  Scenario: Enter details into sign up page
    Given I am on login page
    When I enter "calabashtest.wordpress.com" into input field number 1
    When I enter "userdea@gmail.com" into input field number 2
    When I enter "Mypass123" into input field number 3
    And I press the "Sign In" button
    Then I wait for 10 seconds
    Then I must see home page

  @test1 @testrun @reset
  Scenario: Enter details into sign up page
    Given I am on login page
    When I sign in with my credentials on login page
    Then I must see home page

  Scenario: Enter details into sign up page 2
    Given I am on login page
    When I sign in with my credentials on login page
    Then I must see home page

  @test2
  Scenario: Log out from application
    Given I am on home page
    When I sign out from application
    Then I must see welcome page

  @test3
  Scenario: Create a new post and check it is published
    Given I am on home page
    When I create a new post with title "Hello 4"
    Then I must see it is published

#  @test4
#  Scenario: Delete a comment
#    Given I am on comments page
#    When I see a comment with text "comment 1"
#    And I delete the comment
#    And verify its deleted successfully
#
#  @test5
#  Scenario: Verify text in about page
#    Given I am on Pages page
#    When I see about page
#    Then I verify about page
