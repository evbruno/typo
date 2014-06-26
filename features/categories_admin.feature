Feature: Manage Categories
  As a blog administrator
  In order to manage how I'll share my thoughts 
  I want to be able to manage (CRUD) my blog's categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  # just regression spec
  Scenario: Successfully create article
    Given I am on the new category page
    Then I should see "Categories"
    Then I should see "General"