package StepDefination;

import Factory.DriverFactoryTest;
import Utils.configReader;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.testng.Assert;

import java.util.List;

public class checkOutFunctionalityTest {

    static double ActualPrice;
    static WebDriver driver = DriverFactoryTest.getDriver();
    configReader configreader = new configReader("src/test/resources/Config/checkOutFunctionality.properties");

    @When("User sum price of all item")
    public void user_sum_price_of_all_item() {
        List<WebElement> prices = driver.findElements(By.xpath("//div[@class='inventory_item_price']"));
        for(WebElement ele:prices)
        {
            double p= Double.parseDouble(ele.getText().substring(1));
            ActualPrice = ActualPrice + p;
        }
    }

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
        String price = configreader.getLocators("actual_price");
        WebElement validateActualPrice=driver.findElement(By.xpath(price));
        Double p = Double.parseDouble(validateActualPrice.getText().substring(13));
        Assert.assertEquals(p,ActualPrice);
    }

    @Then("User validate total price")
    public void user_validate_total_price()
    {
        String price = configreader.getLocators("total_price");
        String tax = configreader.getLocators("tax");
        WebElement tax_=driver.findElement(By.xpath(tax));
        WebElement validateActualPrice=driver.findElement(By.xpath(price));
        Double total_price_actual = Double.parseDouble(validateActualPrice.getText().substring(8));
        Double total_price_expected = Double.parseDouble(tax_.getText().substring(6))+ActualPrice;
        Assert.assertEquals(total_price_actual,total_price_expected);

    }
}
