
#### Scenario

* Ultra-simple example to illustrate these exercises

#### Setup

* clone this repo, or contact Michael Easter to set it up
* set `EGGS_GIT_HOME` env var to be `~/easter_eggs_for_git` directory
* in this directory, run: `../generate_project.sh` 
* run tests: `gradle test`

#### Steps

* `git add build.gradle src/**/*.java`
    * This adds files _to the index_; we typically say _stage for commit_.
* `git status`
    * Observe/confirm that the index looks correct.
* `git commit -m "first commit"`
    * This stores changes in _the index_ into the _local repository_.
* `git push origin master` 
    * Update the _remote repository_ with changes from the local repository.
