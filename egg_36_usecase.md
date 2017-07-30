
#### Scenario

* Illustrate basic stashing
* Reference [here](https://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning)

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

#### Step 2: stash A

* change _hello_ in `App.java` to _hello [A]_, then:
```
./run.sh
git stash save "hello A"
```
* confirm `App.java` is back to _hello_:
```
./run.sh
```
* list current stashes:
```
git stash list
```

#### Step 3: stash B

* change _hello_ in `App.java` to _hello [B]_, then:
```
./run.sh
git stash save "hello B"
```
* confirm `App.java` is back to _hello_:
```
./run.sh
```
* list current stashes:
```
git stash list
```

#### Step 4: apply stash A

* Apply the changes in stash A:
```
git stash apply stash@{1}
./run.sh
```

#### Step 5: apply stash B

* Revert changes from last step:
```
git checkout -- src/**/App.java
./run.sh
```
* Apply the changes in stash B:
```
git stash apply stash@{0}
./run.sh
```

That's it! [Back to exercise listing](./Exercises.md)
