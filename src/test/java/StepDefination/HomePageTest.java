package StepDefination;

import Factory.DriverFactoryTest;
import Utils.configReader;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

public class HomePageTest {
    WebDriver driver = DriverFactoryTest.getDriver();
    configReader configreader = new configReader("src/test/resources/Config/HomePage.properties");

    @Then("User is able to see {string}")
    public void user_is_able_to_see(String locater) {
        String locat = configreader.getLocators(locater);
        WebElement element = driver.findElement(By.xpath(locat));
        Assert.assertTrue(element.isDisplayed());
    }
}
