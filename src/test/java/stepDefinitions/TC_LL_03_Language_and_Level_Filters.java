package stepDefinitions;

import org.junit.Assert;

import factory.BaseClass;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pageObjects.HomePage;
import pageObjects.WebDevPage;

public class TC_LL_03_Language_and_Level_Filters {
	WebDevPage wp=new WebDevPage(BaseClass.getDriver());
	HomePage hp=new HomePage(BaseClass.getDriver()); 

	@When("selecting the Language checkBox")
	public void selecting_the_language_check_box() {
	    wp.clickEnglishCheckBox();
	}

	@When("respective results of language is shown")
	public void respective_results_of_language_is_shown() {
	    Boolean result=wp.isEnglishFilterDisplayed();
	    Assert.assertEquals(true,result);  
	}

	@Then("selecting the Level checkBox")
	public void selecting_the_level_check_box() throws InterruptedException {
	    wp.clickBeginnerCheckBox();
	}

	@Then("respective results of Level is shown")
	public void respective_results_of_level_is_shown() {
		Boolean result=wp.isBeginnerFilterDisplayed();
	    Assert.assertEquals(true,result);
	}
}
