package StepDefination;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.Test;

import java.io.File;
import java.io.IOException;

public class sample {

    static WebDriver driver;

    @Test(retryAnalyzer = RetryAnalyzer.class)
    public void m1() throws IOException {
        try
        {
            driver = new ChromeDriver();
            driver.get("https://www.saucedemo.com/");
            driver.manage().window().maximize();
            driver.findElement(By.xpath("//input[@id='user-name']")).sendKeys("hjsjdvks");
            driver.findElement(By.xpath("//input[@id='password']")).sendKeys("ghfhgj");
            driver.findElement(By.xpath("//input[@id='login-button']")).click();
            assert false;
        }
        catch (Exception e)
        {
            File screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);
            //FileUtils.copyFile(screenshot,new File("src/screenshot"+"screenshot1.png"));
        }
        finally {
            driver.close();
        }
    }

}
