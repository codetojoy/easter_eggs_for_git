
#### Scenario

* working with branches and tags 

#### Setup

* create a new repo on GitHub, and clone it in a new folder `trunk`
* optional way to get some starter code:
    * clone this repo into some directory (e.g. `eggs`)
    * set `EGGS_GIT_HOME` env var to be `~/eggs/easter_eggs_for_git` directory
    * in `trunk`, run: `${EGGS_GIT_HOME}/generate_project.sh` 
    * confirm tests: `gradle test`
    * stage: `git add .gitignore build.gradle src`
    * commit: `git commit -m "message here"`
    * push: `git push origin master`

#### Step 1: tag trunk/master as V 1.0.0

* assume we have just released V 1.0.0
* in a terminal window we'll call _trunk terminal_
* to tag the master branch:
    * tag: `git tag v-1.0.0`
    * confirm: `git tag`
    * push: `git push origin v-1.0.0`
    * observe new tag on remote repo webpage

#### Step 2: create, tag maintenance branch

* create a new terminal window we'll call _maint terminal_
* create `maintenance` folder
* clone repo into this folder
* create branch: `git branch maintenance master`
* confirm: `git branch`
* switch branch: `git checkout maintenance`
* confirm: `git branch`
* push: `git push origin maintenance`
* confirm branch on repo
* we can tag the maintenance branch:
```
git tag maint-v-1.0.0
git tag
git push origin maint-v-1.0.0
```
* as a sanity check: `echo "maint v-1.0.0" > branch.txt`
* `git add branch.txt`
* `git commit -m "message here"`
* push: `git push origin maintenance`
* observe new file on remote repo

#### Step 3: work continues on maintenance branch

* assume that work is done in the maintenance branch and is pushed to trunk

#### Step 4: work continues on master

* in _trunk terminal_, make a change and then commit and push
* e.g. add a comment `// V 1.1.1 comment` to a `build.gradle` file, then:
```
git add build.gradle
git commit -m "new comment"
git push origin master
```

#### Step 5: release V 1.0.1

* in _maint terminal_, rename `maintenance` branch to `maint-v-1.0.0` branch: 
```
git branch -m maintenance maint-v-1.0.0
git push -u origin maint-v-1.0.0
git push origin :maintenance
```
* return to step 1 to tag master as "V 1.0.1"
* return to step 2 to re-create the maintenance branch

#### Notes

* Tags are read-only snapshots in time.
* The command `git rebase` is a method to apply changes from one branch to another, but it is wise to start with a simple methodology.

