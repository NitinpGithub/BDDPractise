package StepDefination;

import org.testng.IRetryAnalyzer;
import org.testng.ITestResult;

public class RetryAnalyzer implements IRetryAnalyzer {
    private int count=1;
    private int MAX_COUNT=3;

    @Override
    public boolean retry(ITestResult result) {
        if(count<MAX_COUNT)
        {
            count++;
            return true;
        }
        return false;
    }
}
