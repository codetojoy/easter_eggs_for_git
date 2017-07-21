
#### Scenario

* Happy path for a remote branch.
* Reference [here](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

#### Tools

* more info [here](../reference_doc/Tools.md)

#### Setup part 1 (delete old repo)

* if you have created a `YOURNAME_tmp_sandbox_2017` repo, delete it on GitHub with [these steps](../reference_doc/DeleteRepo.md)

#### Setup part 2 (create repo)

* create a new repository called `YOURNAME_tmp_sandbox_2017` (using your name)
* create a folder called `master` on your machine, inside clone the repo from GitHub
<details><summary>Hint for last item:</summary>
<p><pre>
cd master
# change repo as appropriate:
git clone https://github.com/codetojoy/YOURNAME_tmp_sandbox_2017.git
</pre></p></details>
<br/>

#### Setup part 3 (add code to new repo)

* clone this repo (easter_eggs_for_git) into a folder (e.g. `eggs`)
* set `EGGS_GIT_HOME` env var to be `~/eggs/easter_eggs_for_git` directory
    * `export EGGS_GIT_HOME=[PATH]/eggs/easter_eggs_for_git`
* `cd master/YOURNAME_tmp_sandbox_2017`
* run: `$EGGS_GIT_HOME/generate_project.sh` 
    * this will generate a simple Java application
    * confirm tests: `gradle test`
    * `cat ~/src/main/java/com/example/App.java` to understand it
    * run the application: `gradle -q clean run`
* add, commit, push the `src` folder, `build.gradle`, and `.gitignore`. [Here](../reference_doc/Commit.md) are generic steps.
* confirm changes on remote repo webpage

#### Step 1: tag master branch as V 1.0.0

* assume we have just released V 1.0.0
* in a terminal window we'll call _master terminal_
* let's tag the `master` branch:
    * tag: `git tag v-1.0.0-milestone`
    * confirm: `git tag`
    * push: `git push origin v-1.0.0-milestone`
* observe new tag on remote repo webpage (look for 'release' link)

#### Step 2: create maintenance branch

* create a new terminal window we'll call _maint terminal_
* create `maintenance` folder
* clone repo into this folder
<details><summary>Hint for last item:</summary>
<p><pre>
# change repo as appropriate:
git clone https://github.com/codetojoy/YOURNAME_tmp_sandbox_2017.git
</pre></p></details>
</details>
<br/>

* `cd maintenance/YOURNAME_tmp_sandbox_2017`
* create branch: `git branch maintenance master`
* confirm: `git branch`
* switch branch: `git checkout maintenance`
* confirm: `git branch`
* push: `git push origin maintenance`
* confirm branch on remote repo webpage

#### Step 3: tag maintenance branch

* we can tag the maintenance branch:
```
git tag maint-v-1.0.0-milestone
git tag
git push origin maint-v-1.0.0-milestone
```
* observe new tag on remote repo webpage (look for 'release' link)

#### Step 4: work continues on maintenance branch

* in _maintenance terminal_ ...
* in `App.java` change `VERSION_INFO` to `V 1.0.1 maintenance`
* run the application: `gradle -q clean run`
* add and commit `App.java` but do not push (yet)
<details><summary>Hint for last item:</summary>
<p><pre>
git status
git add src/**/App.java
git commit -m "useful message here"
</pre></p></details>
<br/>

* push to `maintenance` branch: `git push origin maintenance`
* assume other bug-fixes have been made to this branch (and replicated in `master` branch, as we do with legacy SVN system)

#### Step 5: work continues on master branch

* in _master terminal_ ...
* in `App.java` change `VERSION_INFO` to `V 1.1.0 master`
* run the application: `gradle -q clean run`
* add, commit, and push to the remote `master` branch. [Here](../reference_doc/Commit.md) are generic steps.

#### Step 6: release V 1.0.1 from maintenance branch

* In this step, assume we want to release V 1.0.1 from the maintenance branch. Per legacy process, we want to tag the milestone, and rename the maintenance branch.

* in _maint terminal_ ...
* tag `maintenance` branch as `maint-v-1.0.1-milestone`:
```
git tag maint-v-1.0.1-milestone
git tag
git push origin maint-v-1.0.1-milestone
```
* rename `maintenance` branch to `maint-v-1.0.1` branch: 
```
git branch -m maintenance maint-v-1.0.1
git push -u origin maint-v-1.0.1
git push origin :maintenance
```
* confirm on remote repo that `maintenance` branch is now `maint-v-1.0.1`

#### Step 7: tag master branch and cut new maintenance branch

* return to step 1 to tag master as "V 1.1.0"
* return to step 2 to re-create the maintenance branch

#### Step 8: explore repo

* in brand new terminal and folder ...
* create `sandbox` folder
* clone the repo 
<details><summary>Hint for last item:</summary>
<p><pre>
cd sandbox
# change repo as appropriate:
git clone https://github.com/codetojoy/YOURNAME_tmp_sandbox_2017.git
</pre></p></details>
<br/>

* view history with: `git log --oneline --decorate --graph --all`
* alternately, view history with `ungit`
* assume that we want to move to a specific tag (this will be in "detached HEAD" state but that is OK for now):
```
git tag -l
git checkout tags/v-1.0.0-milestone
gradle -q clean run
```
* assume that we want to move to a specific commit (this will be in "detached HEAD"state but that is OK for now):
```
git log --oneline
# use a commit id in your terminal:
git checkout abc1234
gradle -q clean run
``` 
* to continue work from a specific tag or commit (and avoid "detached HEAD"), we create a new branch with the checkout. For example:
```
git checkout tags/v-1.0.0-milestone -b bug5150
# or
git checkout abc1234 -b bug6160
```

#### Notes

* Tags are read-only snapshots in time.
* Branches are analogous to those in SVN.
