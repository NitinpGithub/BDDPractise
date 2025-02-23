package StepDefination;

import Factory.DriverFactoryTest;
import Utils.configReader;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;


public class cartPageTest {

    WebDriver driver = DriverFactoryTest.getDriver();
    configReader configreader = new configReader("src/test/resources/Config/cartPage.properties");


    @Then("Check quantity of six product add into cart")
    public void check_quantity_of_six_product_add_into_cart() {

        String quantity = configreader.getLocators("quantity");
        Assert.assertEquals("6",driver.findElement(By.xpath(quantity)).getText());

    }
}
