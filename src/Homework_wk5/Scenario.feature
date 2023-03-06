Feature: Demo Nopcommerce's top menu acceptance criteria
  As a user,I would like to check acceptance criteria of Nopcommerce Top menu

  Background: User is on given URL
    When User type URL https://demo.nopcommerce.com
    And User click on enter button
    Then User is on given URL

    Scenario: Verify that user can navigate to books category
      When User is  on given URL
      And Click on books tab on top menu
      Then User is navigated to books category page

      Scenario: Verify that user can see the books category page with filters and list of products
        When User is on given URL
        And Click on books tab on top menu
        And Check filters and List tab
        Then Books category page is displayed with filters and list tabs

      Scenario: Verify that user can see 'Sort by' filter on book category page
        Given User is on books category page
        When User is on books category page
        And Check 'sort by' filter is present
        Then 'sort by' filter is available on book category page

      Scenario: Verify that user can see 'Display' filter on book category page
        Given User is on books category page
        When User is on books category page
        And Check 'Display' filter is present
        Then 'Display' filter is avilable on book category page

      Scenario: Verify that user can use 'Grid' tab on book category page
        Given User is on books category page
        When User is on books category page
        And Check 'Grid' tab is present
        Then 'Grid' tab is available on books category page

      Scenario: Verify that user can see 'List' tab on book category page
        Given User is on books category page
        When User is on books category page
        And Check 'List; tab is present
        Then 'List' tab is available on book category page

      Scenario: Verify that user can see 'Name:A to Z' selection is present in 'sort by' filter
        Given User is on books category page
        When User is on books category page
        And Click on 'sort by' filter
        And Check that 'Name:A to Z selection is present
        Then 'Name:A to Z' selection is present in 'sort by' filter

      Scenario: Verify that user can see 'Name:A to Z' is first option in 'sort by'
        Given User is on books category page
        When User is on books category page
        And Click on 'sort by' filter
        Then 'Name:A to z' is first option in order

      Scenario: Verify that user can see 'Name:A to Z' filter is functioning as expected(Note: products are filtered in alphabetical order)
        Given User is on books category page
        When User is on books category page
        And Click on 'sort by' filter
        And select 'Name:A to z' filter
        Then all products are displayed in alphabetical order






