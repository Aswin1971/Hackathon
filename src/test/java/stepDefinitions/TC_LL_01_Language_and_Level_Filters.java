package stepDefinitions;

import org.junit.Assert;

import factory.BaseClass;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import pageObjects.HomePage;
import pageObjects.WebDevPage;

public class TC_LL_01_Language_and_Level_Filters {
	WebDevPage wp=new WebDevPage(BaseClass.getDriver());
	HomePage hp=new HomePage(BaseClass.getDriver()); 
	@Given("the URL navigates to the homePage")
	public void the_url_navigates_to_the_home_page() {
		String title=hp.getTitle();
	    Assert.assertEquals(title,"Coursera | Degrees, Certificates, & Free Online Courses");
	}

	@Given("search for {string}")
	public void search_for(String string) {
		hp.search(string); 
	}

	@Then("Validate whether language checkBox is displayed")
	public void validate_whether_language_check_box_is_displayed() {
	    Boolean result=wp.isLanguageCheckBoxDisplayed();
	    Assert.assertEquals(true,result); 
	}

	@Then("Validate whether level checkBox is displayed")
	public void validate_whether_level_check_box_is_displayed() {
		Boolean result=wp.isLevelCheckBoxDisplayed();
	    Assert.assertEquals(true,result);
	}

}
