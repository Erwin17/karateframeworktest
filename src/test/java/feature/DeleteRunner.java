package feature;

import com.intuit.karate.junit5.Karate;

public class DeleteRunner {

    @Karate.Test
    Karate sampleTest(){
        return Karate.run("delete").relativeTo(getClass());
    }
}
