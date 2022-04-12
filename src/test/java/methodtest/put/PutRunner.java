package methodtest.put;

import com.intuit.karate.junit5.Karate;

public class PutRunner {

    @Karate.Test
    Karate sampleTest(){
        return Karate.run("Put").relativeTo(getClass());
    }
}
