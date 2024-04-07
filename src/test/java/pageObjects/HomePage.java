package pageObjects;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import factory.BaseClass;

public class HomePage extends BasePage {

	public HomePage(WebDriver driver)
	{
		super(driver);
	}
	
	@FindBy(xpath="//*[@placeholder='What do you want to learn?']") 
	WebElement searchInputBox;
	
	@FindBy(xpath="//button[@class=\"nostyle search-button\"]//div[@class=\"magnifier-wrapper\"]//*[name()=\"svg\"]") 
	WebElement searchButton;
	
	public String getTitle() {
		String title=driver.getTitle();
		return title;
	}
	public boolean isSearchInputBoxPresent() {
		Boolean result=searchInputBox.isDisplayed();
		return result;
	}
	
	public boolean isSearchButtonPresent() {
		Boolean result=searchButton.isDisplayed();
		return result; 
	}
	
	public boolean isSearchInputBoxEnabled() {
		Boolean result=searchInputBox.isEnabled();
		return result;
	}
	
	public boolean isSearchButtonClickable() {
		Boolean result=searchButton.isEnabled();
		return result; 
	}
	
	public void search(String value) {
		searchInputBox.sendKeys(value);
		searchButton.click();
	}
	
	public Boolean searchResult() {
		String result=BaseClass.getDriver().findElement(By.xpath("//div[@class='rc-SearchResultsHeader']//span")).getText();
	    if(result.contains("Web Development Course")) {
	    	return true;
	    }else
	    {
	    	return false;
	    }
	}
	public void clickSearchInputBox()
	{
		searchInputBox.click();
	}
	
	public void searchCourse()
	{
		searchInputBox.sendKeys("web development courses");
	}
	
	public void clickSearchButton()
	{
		searchButton.click();
	}
}
