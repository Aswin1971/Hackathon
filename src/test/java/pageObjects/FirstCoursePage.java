package pageObjects;

import java.util.Set;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class FirstCoursePage extends BasePage {

	public static String firstCourseWindow;
	public static String secondCourseWindow;

	
	public FirstCoursePage(WebDriver driver) {
		super(driver);
		// TODO Auto-generated constructor stub
	}

	public WebDevPage wdp;
	
	
	
	@FindBy(xpath="//*[@id='rendered-content']/div/main/section[2]/div/div/div[1]/div[1]/section/h1")
	public WebElement firstCourseTitle;

	@FindBy(xpath="/html[1]/body[1]/div[2]/div[1]/main[1]/section[2]/div[1]/div[1]/div[2]/div[1]/div[1]/section[1]/div[2]/div[3]/div[1]")
	public WebElement firstCourseHours;

	@FindBy(xpath="/html/body/div[2]/div/main/section[2]/div/div/div[2]/div/div/section/div[2]/div[1]/div[1]")
	public WebElement firstCourseRating;
	
	public void firstCourseDetails()
	{
		
		driver.switchTo().window(firstCourseWindow);
		WebDevPage.courseTitles.add(firstCourseTitle.getText());
		WebDevPage.courseHours.add(firstCourseHours.getText());
		WebDevPage.courseRatings.add(firstCourseRating.getText());
		
		
	}
	
	public void getWindowHandles()
	{
		
		Set<String> windows=driver.getWindowHandles();
		for(String i: windows)
		{
			
			if(driver.switchTo().window(i).getTitle().equalsIgnoreCase("Python for Data Science, AI & Development | Coursera"))
			{
				firstCourseWindow=i;
			}
			else if(driver.switchTo().window(i).getTitle().equals("Meta Front-End Developer Professional Certificate | Coursera"))
			{
				secondCourseWindow=i;
			}
		}

   }
}
