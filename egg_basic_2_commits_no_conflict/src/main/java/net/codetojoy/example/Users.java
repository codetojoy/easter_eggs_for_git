
package net.codetojoy.example;

import java.util.*;

public class Users {
    public String fromBob() { return "bob"; }

    public User findUserByName(String name, List<User> users) {
        User result = null;

        for (User user : users) {
            if (user.getName().equalsIgnoreCase(name)) {
                result = user;
                break;
            }
        }

        return result;
    }
}
