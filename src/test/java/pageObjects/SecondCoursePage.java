package pageObjects;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindAll;
import org.openqa.selenium.support.FindBy;

public class SecondCoursePage extends BasePage{

	public WebDevPage wdp;
	public int secondCourseHours;
	public List<Integer> listOfSecondCourseHoursInInt=new ArrayList<Integer>();
	
	

	public SecondCoursePage(WebDriver driver)
	{
		super(driver);
	}
	
	
	
	@FindBy(xpath="//h1[normalize-space()=\"Meta Front-End Developer Professional Certificate\"]")
	public WebElement secondCourseTitle;

	@FindAll({@FindBy(xpath="//div[contains(@class,'css-1i4o2ol')]//child::span[contains(text(),'hours')]")})
	public List<WebElement> hours;

	@FindBy(xpath="/html[1]/body[1]/div[2]/div[1]/main[1]/section[2]/div[1]/div[1]/div[2]/div[1]/div[1]/section[1]/div[2]/div[1]/div[1]")
	public WebElement secondCourseRating;
	
	
	public void secondCourseDetails()
	{

		secondCourseHours=0;
		driver.switchTo().window(FirstCoursePage.secondCourseWindow);
		WebDevPage.courseTitles.add(secondCourseTitle.getText());
		for(WebElement e: hours)
		{
			listOfSecondCourseHoursInInt.add(Integer.parseInt(e.getText().substring(0,2)));
		}
		for(int i: listOfSecondCourseHoursInInt)
		{
			secondCourseHours=secondCourseHours+i;
		}
		WebDevPage.courseHours.add(Integer.toString(secondCourseHours));
		WebDevPage.courseRatings.add(secondCourseRating.getText());
	}
}
