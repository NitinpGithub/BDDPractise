package Hooks;
import Factory.DriverFactoryTest;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.WebDriver;
public class MyHooksTest
{
    WebDriver driver;
    @Before
    public void setUp()
    {
        driver = DriverFactoryTest.getDriver();
        driver.manage().window().maximize();
    }
    @After
    public void tearDown()
    {
            driver.quit();
            DriverFactoryTest.driver=null;
    }


}
