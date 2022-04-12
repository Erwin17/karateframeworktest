package feature;

import com.intuit.karate.junit5.Karate;

public class PostRunner {

    @Karate.Test
    Karate postTest(){
        return Karate.run("Post").relativeTo(getClass());
    }
}
