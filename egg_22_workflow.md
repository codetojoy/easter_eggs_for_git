
#### Scenario

* Illustate branches and tags in a manner similar to SVN legacy.
* This uses a `master` branch and a `maintenance` branch and assumes that devs will work in separate folders for each branch.

#### Tools

* more info [here](./reference_doc/Tools.md)

#### Setup part 1 (delete old repo)

* if you have created a `YOURNAME_tmp_sandbox_2017` repo, delete it on GitHub with [these steps](./reference_doc/DeleteRepo.md)

#### Setup part 2 (create repo)

* on GitHub, create a new repository called `YOURNAME_tmp_sandbox_2017` (using your name)
* create folder: `mkdir -p /c/github_training/workflow/master`
* go to folder: `cd /c/github_training/workflow/master`
* clone the repo from GitHub
<details><summary>Hint for last item:</summary>
<p><pre>
# REPO is a placeholder. Retrieve the value from the GitHub page for the repository
git clone REPO
</pre></p></details>
<br/>

#### Setup part 3 (add code to new repo)

* follow [these steps](./reference_doc/SetupApp.md) to setup an app in this folder

#### Setup part 4: add, commit

* add and commit all `java` files, `build.gradle`, and `.gitignore`

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/*.java build.gradle .gitignore 
git add -f run.sh
git status
git commit -m "my App"
git push origin master
</pre></p></details>
<br/>

#### Setup part 5: push to GitHub

* push changes to GitHub repo: `git push origin master`
* examine history on GitHub repo to confirm commit has been pushed

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
* create folder: `mkdir -p /c/git_training/workflow/maintenance`
* go to folder: `cd /c/git_training/workflow/maintenance`
* clone the remote repo into this folder
<details><summary>Hint for last item:</summary>
<p><pre>
# REPO is a placeholder. Retrieve the value from the GitHub page for the repository
git clone REPO
</pre></p></details>
</details>
<br/>

* `cd YOURNAME_tmp_sandbox_2017`
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
* run the application: `./run.sh`
* add and commit `App.java` but do not push (yet)

<details><summary>Hint for last item:</summary>
<p><pre>
git status
git add src/**/App.java
git commit -m "V 1.0.1 maintenance fix"
</pre></p></details>
<br/>

* push to `maintenance` branch: `git push origin maintenance`
* assume other bug-fixes have been made to this branch (and replicated in `master` branch, as we do with legacy SVN system)

#### Step 5: work continues on master branch

* in _master terminal_ ...
* in `App.java` change `VERSION_INFO` to `V 1.1.0 master`
* run the application: `./run.sh`
* add, commit, and push to the remote `master` branch. 

<details><summary>Hint for last item:</summary>
<p><pre>
git status
git add src/**/App.java
git commit -m "V 1.1.0 functionality"
git push origin master
</pre></p></details>
<br/>

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
./run.sh
```
* assume that we want to move to a specific commit (this will be in "detached HEAD"state but that is OK for now):
```
git log --oneline
# use a commit id in your terminal:
git checkout abc1234
./run.sh
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

That's it! [Back to Exercises listing](./Exercises.md)
