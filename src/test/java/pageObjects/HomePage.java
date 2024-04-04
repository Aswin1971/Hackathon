package pageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage extends BasePage {

	public HomePage(WebDriver d)
	{
		super(d);
	}
	
	@FindBy(xpath="//*[@placeholder='What do you want to learn?']") 
	WebElement searchInputBox;
	
	@FindBy(xpath="//button[@class=\"nostyle search-button\"]//div[@class=\"magnifier-wrapper\"]//*[name()=\"svg\"]") 
	WebElement searchButton;
	
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
