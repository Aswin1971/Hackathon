Feature: TS_003 Validate the working of language and level filters for web development courses

  Scenario: TC_LL_01 Checking whether the language and level check box is displayed.
    Given the URL navigates to the homePage
    And search for "Web Development Course"
    Then Validate whether language checkBox is displayed
    And Validate whether level checkBox is displayed

  Scenario: TC_LL_02 Checking whether the language and level check box is Clickable.
    Given the URL navigates to the homePage
    And search for "Web Development Course"
    Then Validate whether language checkBox is Clickable
    And Validate whether level checkBox is Clickable

  Scenario: TC_LL_03 Validation by selecting the required check box and whether it displays the results of it.
    Given the URL navigates to the homePage
    And search for "Web Development Course"
    When selecting the Language checkBox
    And respective results of language is shown
    Then selecting the Level checkBox
    Then respective results of Level is shown
