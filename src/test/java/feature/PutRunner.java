package feature;

import com.intuit.karate.junit5.Karate;

public class PutRunner {

    @Karate.Test
    Karate sampleTest(){
        return Karate.run("put").relativeTo(getClass());
    }
}
