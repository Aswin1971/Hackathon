Feature: TS_002 Validate the working of search input box along with the search button

  Scenario: TC_SS_01 Checking Whether the SearchBox and SearchButton is Present
    Then validate whether searchBox is Enabled
    And Validate whether searchButton is clickable

  Scenario: TC_SS_02 Checking whether the SearchBox and SearchButton is working
    Then validate the working of the search box
    And validate the working of search button

  Scenario: TC_SS_03 Validation of valid data in the search text box.
    When valid data is provided in the search text box String "Web Development Course"
    Then respective results are displayed in the webpage

  Scenario: TC_SS_04 Validation of invalid data in the search text box.
    When Invalid data is provided in the search text box String "weubvwebf"
    Then respective results regarding invalid data is displayed in the webpage
