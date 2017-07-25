
#### Scenario

* Multi-team merge!
* Reference [here](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

#### Setup

* Assume the facilitator has setup a repo `team_tmp_sandbox_2017`
* Assume working in pairs

#### Local work

* Clone the repo `team_tmp_sandbox_2017`
* In `App.java`, add a new method using the initials of the partners. e.g. "JD" for John Doe and "AS" for Alice Smith.
* Add this method using appropriate initials:
```
private static void greetingJDAS() {
    System.out.println("HELLO from JD and AS");
}
```
* Call `greetingsJDAS()` from the `main` method and confirm that it works

#### Remote 

* The goal is for everyone to run the app and see every team's initials.
* Aside from merge conflicts, the general cycle is:
```
git fetch origin master
git merge origin/master
# deal with any problems here

git push origin master
```
* Once your team's changes are pushed, pull changes on recurring basis until you see everyone's initials:
```
git fetch origin master
git merge origin/master

./run.sh
```

That's it! [Back to exercise listing](./Exercises.md)
