
package com.example;

import java.util.*;

import org.junit.*;
import static org.junit.Assert.*;

public class UsersTestCase {
    @Test
    public void testFindUserByName_Basic() {
        List<User> users = new ArrayList<>();
        users.add(new User("Mozart", 35));
        users.add(new User("Beethoven", 60));

        // test
        User result = new Users().findUserByName("Mozart", users);

        assertEquals("Mozart", result.getName());
    }
}
