package methodtest.delete;

import com.intuit.karate.junit5.Karate;

public class DeleteRunner {

    @Karate.Test
    Karate sampleTest(){
        return Karate.run("Delete").relativeTo(getClass());
    }
}
