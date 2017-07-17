
#### Scenario

* working with branches and tags in a manner similar to SVN legacy 
* uses a `master` branch and a `maintenance` branch

#### Tools

* ensure you have Bash, Gradle, Git
* install Tortoise for Git
* [optional] install `ungit`: `npm install -g ungit`. This is one way to view Git changes.

#### Setup part 1 (delete old repo)

* if you have created a `YOURNAME_tmp_sandbox_2017` repo, delete it on GitHub with [these steps](../reference_doc/DeleteRepo.md)

#### Setup part 2 (create repo)

* create a new repository called `YOURNAME_tmp_sandbox_2017` (using your name)
* create a folder called `master` on your machine, inside clone the repo from GitHub
<details><summary>Hint for last item:</summary>
<p><pre>
cd master
# change YOURNAME as appropriate
git clone https://github.com/codetojoy/YOURNAME_tmp_sandbox_2017.git
</pre></p></details>
<br/>

#### Setup part 3 (add code to repo)

* clone this repo (easter_eggs_for_git) into a folder (e.g. `eggs`)
* set `EGGS_GIT_HOME` env var to be `~/eggs/easter_eggs_for_git` directory
    * `export EGGS_GIT_HOME=[PATH]/eggs/easter_eggs_for_git`
* in `master/YOURNAME_tmp_sandbox_2017`, run: `$EGGS_GIT_HOME/generate_project.sh` 
    * confirm tests: `gradle test`
    * view `~/src/main/java/com/example/App.java` to understand it
    * run the application: `gradle -q clean run`
* add, commit, push the `src` tree, `build.gradle`, and `.gitignore`
<details><summary>Hint for last item:</summary>
<p><pre>
git add .gitignore build.gradle src
git status
git commit -m "message here"
git push origin master
</pre></p></details>
</details>
<br/>
* confirm changes on remote repo webpage

#### Step 1: tag master as V 1.0.0

* assume we have just released V 1.0.0
* in a terminal window we'll call _master terminal_
* let's tag the `master` branch:
    * tag: `git tag v-1.0.0`
    * confirm: `git tag`
    * push: `git push origin v-1.0.0`
    * observe new tag on remote repo webpage (look for 'release' link)

#### Step 2: create, tag maintenance branch

* create a new terminal window we'll call _maint terminal_
* create `maintenance` folder
* clone repo into this folder, cd into `maintenance/johndoe_tmp_sandbox_2017`
* create branch: `git branch maintenance master`
* confirm: `git branch`
* switch branch: `git checkout maintenance`
* confirm: `git branch`
* push: `git push origin maintenance`
* confirm branch on remote repo webpage
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
* observe new file on remote repo in `maintenance` branch but not on `master` branch

#### Step 3: work continues on maintenance branch

* in _maintenance terminal_ ...
* in `App.java` change `VERSION_INFO` to `V 1.0.1 maintenance`
* run the application: `gradle -q clean run`
* commit and push to the remote `maintenance` branch
* assume other bug-fixes have been made to this branch (and replicated in `master` branch, as we do with legacy SVN system)

#### Step 4: work continues on master

* in _master terminal_ ...
* in `App.java` change `VERSION_INFO` to `V 1.1.0 master`
* run the application: `gradle -q clean run`
* in `App.java` change version to `V 1.1.0 master`
* commit and push to the remote `master` branch

#### Step 5: release V 1.0.1 from maintenance branch

* in _maint terminal_ ...
* tag `maintenance` branch as maint-v-1.0.1
```
git tag v-1.0.1
git tag
git push origin v-1.0.1
```
* rename `maintenance` branch to `maint-v-1.0.1` branch: 
```
git branch -m maintenance maint-v-1.0.1
git push -u origin maint-v-1.0.1
git push origin :maintenance
```
* confirm on remote repo that `maintenance` branch is now `maint-v-1.0.1`
* return to step 1 to tag master as "V 1.1.0"
* return to step 2 to re-create the maintenance branch

#### Notes

* Tags are read-only snapshots in time.
* Branches are analogous to those in SVN.
