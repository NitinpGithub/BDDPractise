package Factory;

import Utils.configReader;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class DriverFactoryTest
{
    public static WebDriver driver=null;

    public static WebDriver getDriver()
    {
        if (driver == null)
        {
            String browser = new configReader("src/test/resources/Config/LoginPage.properties").getBrowser();

            if (browser.toLowerCase().equals("chrome"))
            {
                driver = new ChromeDriver();
            }
        }
        return driver;
    }
}
