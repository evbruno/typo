Feature: Merge Articles
  As a blog administrator
  In order to manage the articles
  I want to be able to merge two articles at my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    And the following articles exist
      | id | title          | body        |
      | 11 | Title Lipsum   | Body lipsum |
      | 22 | Title Lorem    | Lorem body  |

  Scenario: Successfully merge articles
    Given I am on edit page for "Title Lipsum"
    When I fill in "merge_with" with "22"
    And I press "Merge"
    Then I should be on the admin content page
