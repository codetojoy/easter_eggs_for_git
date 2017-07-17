
package com.example;

import java.util.*;

public class Users {
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
