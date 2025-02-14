package StepDefination;

import Factory.DriverFactoryTest;
import Utils.configReader;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

public class loginForValidAndInvalidTest {

    WebDriver driver = DriverFactoryTest.getDriver();
    configReader configreader = new configReader("src/test/resources/Config/loginForValidAndInvalid.properties");

    @When("User enter valid_credential in {string} as {string}")
    public void user_enter_valid_credential_in_as(String unameOrpass, String valid_cred) {
        String username_locator = configreader.getLocators(unameOrpass);
        driver.findElement(By.xpath(username_locator)).sendKeys(valid_cred);

    }

    @When("enter invalid or valid {string} as {string}")
    public void enter_invalid_or_valid_as(String locator, String field_value) {
        String username_locator = configreader.getLocators(locator);
        driver.findElement(By.xpath(username_locator)).sendKeys(field_value);
    }

    @Then("User is able to see error message {string}")
    public void user_is_able_to_see_error_message(String message) {

        String username_locator = configreader.getLocators("error_message");
        String msg = driver.findElement(By.xpath(username_locator)).getText();
        Assert.assertEquals(msg,message);
    }


}
