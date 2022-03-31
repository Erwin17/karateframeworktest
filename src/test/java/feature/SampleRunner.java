package feature;

import com.intuit.karate.junit5.Karate;

public class SampleRunner {

    @Karate.Test
    Karate sampleTest(){
        return Karate.run("sample").relativeTo(getClass());
    }
}
