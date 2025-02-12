package StepDefination;

import Factory.DriverFactoryTest;
import Utils.configReader;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import junit.framework.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
public class login {

    WebDriver driver = DriverFactoryTest.getDriver();
    configReader configreader = new configReader("src/test/resources/Config/LoginPage.properties");

    @Given("User navigate to URL")
    public void user_navigate_to_url() {
        driver.get(configreader.getURL());
    }

    @When("User enter credential in {string} as {string}")
    public void user_enter_credential_in_as(String locator, String credential) {
        String locat = configreader.getLocators(locator);
        String cred = configreader.getLocators(credential);
        WebElement element = driver.findElement(By.xpath(locat));
        element.sendKeys(cred);
    }

    @When("User clicks on {string}")
    public void user_clicks_on(String string) {
        String locator = configreader.getLocators(string);
        WebElement element = driver.findElement(By.xpath(locator));
        element.click();
    }

    @Then("User should be logged in successfully")
    public void user_should_be_logged_in_successfully() {
        Assert.assertTrue(driver.findElement(By.xpath("//*[@id=\"header_container\"]/div[2]/span")).isDisplayed());
    }

}
