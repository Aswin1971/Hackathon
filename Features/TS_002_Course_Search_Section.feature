Feature: TS_002 Validate the working of search input box along with the search button

  Scenario: TC_SS_01 Checking Whether the SearchBox and SearchButton is Present
    Then validate whether searchBox is Displayed
    And Validate whether searchButton is Displayed

  Scenario: TC_SS_02 Checking whether the SearchBox and SearchButton is working
    Given validate whether searchBox is Displayed
    And Validate whether searchButton is Displayed
    Then validate the working of the search box
    And validate the working of search button

  Scenario: TC_SS_03 Validation of valid data in the search text box.
    Given validate whether searchBox is Displayed
    And Validate whether searchButton is Displayed
    And validate the working of the search box
    And validate the working of search button
    When valid data is provided in the search text box String "Web Development Course"
    Then respective results are displayed in the webpage

  Scenario: TC_SS_04 Validation of invalid data in the search text box.
    Given validate whether searchBox is Displayed
    And Validate whether searchButton is Displayed
    And validate the working of the search box
    And validate the working of search button
    When Invalid data is provided in the search text box String "weubvwebf"
    Then respective results regarding invalid data is displayed in the webpage
