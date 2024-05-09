package usercases;

import com.intuit.karate.junit5.Karate;

class BlazeUserRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("feature/randomuser","feature/user").relativeTo(getClass());
    }
}

