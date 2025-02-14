package Runner;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions
        (
                features = "src/test/resources/Features",
                glue = {"StepDefination","Hooks"},
                publish = true,
                plugin = {"pretty", "html:target/cucumber-reports.html"},
                dryRun = false
        )
public class MyTestRunner {
        //hello

}
