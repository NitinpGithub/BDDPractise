package StepDefination;

import Factory.DriverFactoryTest;
import Utils.configReader;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class checkOutFunctionalityTest {

    WebDriver driver = DriverFactoryTest.getDriver();
    configReader configreader = new configReader("src/test/resources/Config/checkOutFunctionality.properties");

    @Then("User add {string} into cart")
    public void user_add_into_cart(String add_to_cart)
    {
        String add_to_cart_locator = configreader.getLocators(add_to_cart);
        WebElement add_cart = driver.findElement(By.xpath(add_to_cart_locator));
        add_cart.click();
    }

    @When("When User click on {string}")
    public void When_user_click_on(String click)
    {
        String click_locator = configreader.getLocators(click);
        WebElement clicks = driver.findElement(By.xpath(click_locator));
        clicks.click();

    }

    @Then("User click on {string}")
    public void user_click_on(String click)
    {
        String click_locator = configreader.getLocators(click);
        WebElement clicks = driver.findElement(By.xpath(click_locator));
        System.out.println("click on checkout button");
        clicks.click();
    }

    @Then("User enter {string} into {string}")
    public void user_enter_into(String value, String field)
    {
        String field_locator = configreader.getLocators(field);
        WebElement send = driver.findElement(By.xpath(field_locator));
        send.sendKeys(value);

    }

    @Then("User validate actual price")
    public void user_validate_actual_price()
    {

    }

    @Then("User validate total price")
    public void user_validate_total_price()
    {

    }
    @Then("User add {string} into cart and get price")
    public void user_add_into_cart_and_get_price(String add_to_cart)
    {

    }


}
