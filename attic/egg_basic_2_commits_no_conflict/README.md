
#### Scenario

* Commit by 2 people with no conflicts

#### Setup as Bob

* in terminal 1 (aka 'Bob')
* clone this repo, or contact Michael Easter to set it up
* set `EGGS_GIT_HOME` env var to be `~/easter_eggs_for_git` directory
* in this directory, run: `../generate_project.sh` 
* run tests: `gradle test`
* execute these steps:
```
git add build.gradle src/**/*.java
git commit -m "first commit"
git push origin master 
```

#### Setup as Alice

* in terminal 2 (aka 'Alice')
* create a new directory/seperate workspace for Alice
* clone the repo (assuming Bob's commit as been executed)
    * e.g. `git clone ...`
* set `EGGS_GIT_HOME` env var to be `~/easter_eggs_for_git` directory
* `cd` to this directory
* run tests: `gradle test`

#### Steps as Bob

* as Bob, edit `User.java` and add a simple comment
* e.g. `// TODO: copyright notice`
* perform [the standard commit/push steps](../reference_doc/Commit.md)

#### Steps as Alice

* as Alice, edit `Users.java` and add a simple method *below* `findUsersByName`
* e.g. `public String fromAlice() { return "alice"; }`
* confirm tests: `gradle test`
* Before we commit, we want to fetch any changes by others (e.g. Bob):
```
git pull origin master
echo $?
```
* Observe `$?` is 0 (success). Observe new comment in `User.java` 
* perform [the standard commit/push steps](../reference_doc/Commit.md)
* in this scenario, there are no conflicts
