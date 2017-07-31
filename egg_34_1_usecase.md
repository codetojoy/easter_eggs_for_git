
#### Scenario

* create a local topic branch, do work, rebase 
* reference [here](https://git-scm.com/book/en/v2/Git-Branching-Rebasing)

#### Tools

* more info [here](./reference_doc/Tools.md)

#### Setup part 1 (delete old repo)

* if you have already created a `YOURNAME_tmp_sandbox_2017` repo, delete it on GitHub with [these steps](./reference_doc/DeleteRepo.md)

#### Setup part 2 (create repo)

* on GitHub, create a new repository called `YOURNAME_tmp_sandbox_2017` (using your name)
* If paired, add your partner as a collaborator for the repo
* create folder: `mkdir -p /c/github_training/usecase/master`
* go to folder: `cd /c/github_training/usecase/master`
* clone the repo from GitHub
<details><summary>Hint for last item:</summary>
<p><pre>
# REPO is a placeholder. Retrieve the value from the GitHub page for the repository
git clone REPO
</pre></p></details>
<br/>

#### Setup part 3 (add code to new repo)

* follow [these steps](./reference_doc/SetupApp.md) to setup an app in this folder

#### Step 1: add, initial commit, push

* add and commit all `java` files, `build.gradle`, and `.gitignore`
```
git add src/**/*.java build.gradle .gitignore
git status
git commit -m "my App"
git push origin master
```

#### Step 2: commit A

* change _hello_ in `App.java` to _hello_A_, then:
```
git add src/**/App.java
./run.sh
git status
git commit -m "commit A"
git push origin master
```

#### Step 3: create branch for 'issue 5151'

* Issue 5151 states that _hello_A_ should be _Greetings_, and cannot be hardcoded
* create and checkout branch:
```
git branch issue5151
git branch
git checkout issue5151
```

#### Step 4: write code for issue 5151

* edit `App.java` to replace _hello_A_ with _Greetings_, then:
```
git add src/**/App.java
./run.sh
git status
git commit -m "fix issue 5151"
git log --oneline
```

#### Step 5: change version on master branch

* switch to `master` branch: `git checkout master`
* edit `App.java` to so that version is "1.1.0", then:
```
git add src/**/App.java
./run.sh
git status
git commit -m "version 1.1.0"
git log --oneline
```

#### Step 5: sync issue5151 branch with master

```
git branch
git checkout issue5151
git rebase master
git log --oneline
```

#### Step 6: simple fast-forward merge on master branch

```
git branch
git checkout master
git merge issue5151
git log --oneline
```

That's it! [Back to exercise listing](./Exercises.md)
