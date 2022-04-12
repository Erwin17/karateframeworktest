package methodtest.configdemo;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.BeforeAll;

public class ConfigDemoRunner {

    @BeforeAll
    public static void before(){
        System.setProperty("karate.env", "qa");
    }
    @Karate.Test
    Karate sampleTest(){
        return Karate.run("configdemo1").relativeTo(getClass());
    }
}
