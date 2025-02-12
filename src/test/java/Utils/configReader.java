package Utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class configReader {
    Properties properties;

    public configReader(String propertyFile) {
        properties = new Properties();
        try (FileInputStream fis = new FileInputStream(propertyFile)) {
            properties.load(fis);
        } catch (IOException e) {
            throw new RuntimeException("Unable to load properties file", e);
        }
    }
    public String getLocators(String key) {
        return properties.getProperty(key);
    }
    public String getURL() {
        return properties.getProperty("url");
    }
    public String getBrowser() {
        return properties.getProperty("browser");
    }
}
