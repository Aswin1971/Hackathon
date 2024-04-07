package stepDefinitions;

import org.junit.Assert;

import factory.BaseClass;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.HomePage;

public class TC_SS_04_Course_Search_Section { 
	HomePage hp=new HomePage(BaseClass.getDriver());
	
	@When("Invalid data is provided in the search text box String {string}")
	public void invalid_data_is_provided_in_the_search_text_box_string(String string) {
		hp.search(string);
	}

	@Then("respective results regarding invalid data is displayed in the webpage")
	public void respective_results_regarding_invalid_data_is_displayed_in_the_webpage() {
		Boolean result=hp.searchResult();
	    Assert.assertEquals(false,result);
	}
}