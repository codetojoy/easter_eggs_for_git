
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

#### Steps

* `git add build.gradle src/**/*.java`
    * This adds files _to the index_.
* `git status`
    * Observe/confirm that the index looks correct.
* `git commit -m "first commit"`
    * This stores changes in _the index_ into the _local repository_.
* `git push origin master` 
    * Update the _remote repository_ with changes from the local repository.
