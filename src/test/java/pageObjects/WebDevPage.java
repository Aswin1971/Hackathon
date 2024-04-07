package pageObjects;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class WebDevPage extends BasePage{
	
	
	public static String parentWindow;
	public static List<String> courseTitles=new ArrayList<String>();
	public static List<String> courseHours=new ArrayList<String>();
	public static List<String> courseRatings=new ArrayList<String>();
	
	
	public WebDevPage(WebDriver driver)
	{
		super(driver);
	}
	

    @FindBy(xpath="//*[@id='search-results-header-wrapper']/div/div/div/div[2]/div[1]/div[2]/div[1]/label/span/span/input") 
    public WebElement checkBoxEnglish;

    @FindBy(xpath="//*[@id='search-results-header-wrapper']/div/div/div/div[4]/div/div/div[1]/label/span/span/input") 
    public WebElement checkBoxBeginner; 


    @FindBy(xpath="/html[1]/body[1]/div[2]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[1]/div[1]")
    public WebElement firstCourse;

    @FindBy(xpath="/html[1]/body[1]/div[2]/div[1]/div[1]/main[1]/div[1]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[2]/div[1]/div[1]/div[1]")
    public WebElement secondCourse;
    
    @FindBy(xpath="//div[@class='cds-ContextualHelp-label']/label")
    public WebElement LanguageFilter;
    
    @FindBy(xpath="//div[@data-testid='search-filter-group-Level']//label")
    public WebElement LevelFilter;
    
    @FindBy(xpath="(//div[@class='rc-ActiveFilterItems css-7nzhcp']/button)[1]")
    public WebElement EnglishFilter;

    @FindBy(xpath="(//div[@class='rc-ActiveFilterItems css-7nzhcp']/button)[2]")
    public WebElement BeginnerFilter;
    		
    public void clickEnglishCheckBox() { 
    	//mywait.until(ExpectedConditions.elementToBeClickable(checkBoxEnglish));
    	checkBoxEnglish.click();

    }

    public void clickBeginnerCheckBox() throws InterruptedException {
    	//mywait.until(ExpectedConditions.elementToBeClickable(checkBoxBeginner));
	    JavascriptExecutor js=(JavascriptExecutor)driver; 
	    js.executeScript("window.scrollBy(0,1000)","");
		Thread.sleep(3000);
    	checkBoxBeginner.click();
    	js.executeScript("window.scrollBy(0,-1000)","");
    }
    
    public Boolean isLanguageCheckBoxDisplayed() { 
    	mywait.until(ExpectedConditions.visibilityOf(LanguageFilter));
    	Boolean result=LanguageFilter.isDisplayed();
    	return result; 
    }
     
    public Boolean isLevelCheckBoxDisplayed() {
    	mywait.until(ExpectedConditions.visibilityOf(LevelFilter));
    	Boolean result=LevelFilter.isDisplayed();
    	return result;  
    }
    
    public Boolean isLanguageCheckBoxClickable() { 
    	mywait.until(ExpectedConditions.elementToBeClickable(LanguageFilter));
    	Boolean result=LanguageFilter.isEnabled();
    	return result; 
    }
    
    public Boolean isLevelCheckBoxClickable() { 
    	mywait.until(ExpectedConditions.elementToBeClickable(LevelFilter));
    	Boolean result=LevelFilter.isEnabled(); 
    	return result;  
    }

    public void getParentWindow(WebDriver driver)
    {
    	this.driver=driver;
    	parentWindow=driver.getWindowHandle();
    }

    public void clickFirstCourse()
    {
    	firstCourse.click();
    }

    public void clickSecondCourse()
    {
    	secondCourse.click();
    }
     
    public Boolean searchResult(String title) {
    	String result=driver.findElement(By.xpath("//div[@data-e2e='NumberOfResultsSection']/span")).getText();
    	if(result.contains(title)) {
    		return true;
    	}else { 
    		return false;
    	}
    }
    
    public Boolean checkLanguageFilterDisplayed() {
    	mywait.until(ExpectedConditions.visibilityOf(LanguageFilter));
    	Boolean result=LanguageFilter.isDisplayed();
    	return result;
    }
    
    public Boolean CheckLanguageFilterEnabled() {
    	mywait.until(ExpectedConditions.visibilityOf(LanguageFilter));
    	Boolean result=LanguageFilter.isEnabled(); 
    	return result; 
    }
    
    public Boolean checkLevelFilterDisplayed() {
    	mywait.until(ExpectedConditions.visibilityOf(LevelFilter));
    	Boolean result=LevelFilter.isDisplayed();
    	return result; 
    }
    
    public Boolean CheckLevelFilterEnabled() {
    	mywait.until(ExpectedConditions.visibilityOf(LevelFilter));
    	Boolean result=LevelFilter.isEnabled(); 
    	return result; 
    }
    
    public Boolean isEnglishFilterDisplayed() {
    	mywait.until(ExpectedConditions.visibilityOf(EnglishFilter));
    	String name=EnglishFilter.getText();
	    if(name.contains("Language: English")) {
	    	 return true;
	    }
	    else { 
	    	 return false;
	    }
    }
    
    public Boolean isBeginnerFilterDisplayed() {
    	mywait.until(ExpectedConditions.visibilityOf(BeginnerFilter));
    	String name1=BeginnerFilter.getText();
	    if(name1.contains("Beginner")) {
	    	 return true;
	    } 
	    else { 
	    	 return false; 
	    }  
    } 
}

	






