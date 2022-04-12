package methodtest.get;

import com.intuit.karate.junit5.Karate;

public class GetRunner {

    @Karate.Test
    Karate sampleTest(){
        return Karate.run("Get").relativeTo(getClass());
    }
}
