package Factory;

import Utils.configReader;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class DriverFactoryTest
{
    public static WebDriver driver;
    public static ChromeOptions options;

    public static WebDriver getDriver()
    {
        if (driver == null)
        {
            String browser = new configReader("src/test/resources/Config/LoginPage.properties").getBrowser();

            if (browser.toLowerCase().equals("chrome"))
            {
                options = new ChromeOptions();
                options.addArguments("--headless");
                driver = new ChromeDriver(options);
            }
        }
        return driver;
    }
}
