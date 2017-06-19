
#### Scenario

* working with branches and tags 

#### Setup

* create a new repo on GitHub, and clone it in a new folder `trunk`
* optional way to get some starter code:
    * clone this repo into some directory (e.g. `eggs`)
    * set `EGGS_GIT_HOME` env var to be `~/eggs/easter_eggs_for_git` directory
    * in `trunk`, run: `${EGGS_GIT_HOME}/generate_project.sh` 
    * confirm tests: `gradle test`
    * commit and push ([steps here](../reference_doc/Commit.md))

#### Step 1: tag trunk as V 1.0.0

* assume we have just released V 1.0.0
* to tag the master branch:
    * in `trunk`: `git tag v-1.0.0`
    * confirm: `git tag`
    * push: `git push origin v-1.0.0`

#### Step 2: create maintenance branch

* create `maintenance` folder
* clone repo into this folder
* create branch: `git branch maintenance master`
* confirm: `git branch`
* as a sanity check: `echo "maintenance" > branch.txt`
* `git add branch.txt`
* `git commit -m "message here"`
* push: `git push origin maintenance`
* confirm file/branch on repo
* we can tag the maintenance branch:
```
git tag maint-v-1.0.0
git tag
git push origin maint-v-1.0.0
```

#### Step 3: work continues on maintenance branch

* assume that work is done in the maintenance branch and is checked-in to trunk

#### Step 4: work continues on master

* in `trunk` folder, make a change and then commit and push
* e.g. add a comment `// V 1.1.1 comment` to a `build.gradle` file, then:
```
git add build.gradle
git commit -m "new comment"
git push origin master
```

#### Step 5: release V 1.0.1

* rename maintenance: `git branch -m maintenance maint-v-1.0.0`
* return to step 1 to tag master as "V 1.0.1"
* return to step 2 to re-create the maintenance branch

#### Notes

* Tags are read-only snapshots in time.
* The command `git rebase` is a method to apply changes from one branch to another, but it is wise to start with a simple methodology.

