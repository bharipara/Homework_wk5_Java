Feature: Nopcommerce Registration
  As a user
    I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registration page
    Given I open the Google chrome browser
    When I open the https://demo.nopcommerce.com/register
    Then I am on Nopcommerce Registration  page

    Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
      When I enter first name "<First name>"
      And  I enter last name "<last name>"
      And  I enter email adress "<email>"
      And  I enter password "<password>"
      And  I enter confirm password "<confirm password>"
      And  click on an register button
      Then I can see an error message "<error message>"
      And  I am not able to register

      Examples:
      |First name  | Lst name   | Email             | Password  | Confirm password | Error message                              |
      | ""         | Bakshi     |Backshi@gmail.com  | 456897    | 456897           | Please enter first name                    |
      | Rohan      | ""         |Bakshi@gmail.com   | 456897    | 456897           | Please enter last name                     |
      | Rohan      | Bakshi     |""                 | 456897    | 456897           | Please enter valid email                   |
      | Rohan      | Bakshi     |Bakshi@gmail.com   | ""        | 456897           | Password is required                       |
      | Rohan      | Bakshi     |Bakshi@gmail.com   | 456897    | 45689            | Confirm password is required               |
      | Rohan      | Bakshi     |Bakshi@gmail.com   | 45689     | ""               | Password and confirm password do not match |
      | ""         | ""         | ""                |  ""       | ""               | Mandatory (*) field is required            |

      Scenario: I should be able to select any one radio button from Gender Label of your personal details section
        Given I am on Gender Labe of your personal detail section
        When  I select "Male" radio button
        And   I select "Female" radio button
        Then  I am able to select any one of the radio button

      Scenario Outline: I should be able to select Day,Month and Year from drop down list of date of birth field
        Given I am on date of birth field of your personal detail section
        When  I select day "<Day>"
        And   I select month "<Month>"
        And   I select year "<Year>"
        Then  I am able to select Day,Month and Year from drop down list

        Examples:
        |Day  | Month    | Year   |
        | 11  | November | 1989   |

        Scenario: I should be able to register with valid mandatory (*) field data on registration page
          When I enter first name "Rohan"
          And  I enter last name "Bakshi"
          And  I enter Email "bakshi@gmail.com"
          And  I enter password "456897"
          And  I enter confirm password "4568972
          And  I click on register button
          Then I was able to register successfully
