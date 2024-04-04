#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
#@tag
Feature: TS_006 Checking the operation and availability of form to be filled

	
	Scenario Outline: TC_FBS_01 Check the availability of For Businesses section
		Given Enter "<row_index>" data in the search text box
    When Enter "<row_index>" into the search box 
    Then The For Businesses Section should be present
    
    Examples:
			| row_index |
      | 1	        |
		
	Scenario Outline: TC_FBS_02 Validate the working of For Businesses Section hyperlink
		Given Enter "<row_index>" data in the search text box
    When Enter "<row_index>" into the search box 
    And Click the hyperlink of for business
    Then Navigates to the business page
    
    Examples:
			| row_index |
      | 1	        |
      
	Scenario Outline: TC_FBS_03 Check Whether the form to be filled is displayed or not
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    Then The required form should be present 
    
    Examples:
			| row_index |
      | 1	        |
			
	Scenario Outline: TC_FBS_04 Check the availability and working of First Name input field by valid input
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |
    
	
	Scenario Outline: TC_FBS_05 Check the availability and working of First Name input field by not filling 
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |
		
	Scenario Outline: TC_FBS_06 Check the availability and working of Last  Name input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |
		
	Scenario Outline: TC_FBS_07 Check the availability and working of Last Name input field by not filling 
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |
    
	Scenario Outline: TC_FBS_08 Check the availability and working of Email Address input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |
    
	Scenario Outline: TC_FBS_09 Check the availability and working of Email Address input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |
	
	Scenario Outline: TC_FBS_10 Check the availability and working of Phone Number input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |
	
	Scenario Outline: TC_FBS_11 Check the availability and working of Phone Number input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |
	
	Scenario Outline: TC_FBS_12 Check the availability and working of Company Name input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_13 Check the availability and working of Company Name input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_14 Check the availability and working of Company Size input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_15 Check the availability and working of Company Size input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
	  And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |
    
	Scenario Outline: TC_FBS_16 Check the availability and working of Job Title input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |
		
	
	Scenario Outline: TC_FBS_17 Check the availability and working of Job Title input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |
	
	Scenario Outline: TC_FBS_18 Check the availability and working of No of Learners input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_19 Check the availability and working of No of Learners input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_20 Validate the operationality of checkbox
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Submit the form
    Then The field should be selected
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_21 Check the availability and working of Country input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Fill the Country field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_22 Check the availability and working of Country input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |
	
	Scenario Outline: TC_FBS_23 Check the availability and working of State input field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Fill the Country field of the form by "<row_index>"
    And Fill the State field of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_24 Check the availability and working of State input field by not filling
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Fill the Country field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
    
    Examples:
			| row_index |
      | 1	        |

	Scenario Outline: TC_FBS_25 Check the availability and working of Need dropdown field
		Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Fill the Country field of the form by "<row_index>"
    And Fill the State field of the form by "<row_index>"
    And Fill the Need dropdown and agreement checkbox fields of the form by "<row_index>"
    And Submit the form
    Then The field should be present and accept the input value
	
		Examples:
			| row_index |
      | 1	        |
      
  #@tag1
  Scenario Outline: TC_FBS_24 Check the availability and working of Need dropdown field by not filling
  	Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Fill the Country field of the form by "<row_index>"
    And Fill the State field of the form by "<row_index>"
    And Submit the form
    Then The respective error message should be displayed
  	
  	Examples:
			| row_index |
      | 1	        |
  
  Scenario Outline: TC_FBS_27 Validate the working of submit button of the form after filled all details

    Given Enter "<row_index>" data in the search text box
    And Enter "<row_index>" into the search box  
    When Navigate to the For Business Section
    And Fill the First name field of the form by "<row_index>"
    And Fill the Last Name field of the form by "<row_index>"
    And Fill the Email Address field of the form by "<row_index>"
    And Fill the Phone Number field of the form by "<row_index>"
    And Fill the Company Name field of the form by "<row_index>"
    And Fill the Company Size field of the form by "<row_index>"
    And Fill the Job Title field of the form by "<row_index>"
    And Fill the No of Learners field of the form by "<row_index>"
    And Fill the checkbox field of the form
    And Fill the Country field of the form by "<row_index>"
    And Fill the State field of the form by "<row_index>"
    And Fill the Need dropdown and agreement checkbox fields of the form by "<row_index>"
    And Submit the form
    Then Redirects to a new page and success message is displayed

		Examples:
			| row_index |
      | 1	        |
		
		
