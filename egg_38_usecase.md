
#### Scenario

* Illustrate `git reset --mixed`
* Reference [here](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified)

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

* change _hello_ in `App.java` to _hello [A]_, then:
```
./run.sh
git add src/**/App.java
git commit -m "commit A"
git push origin master
```

#### Step 3: commit B

* change _hello_ in `App.java` to _hello [B]_, then:
```
./run.sh
git add src/**/App.java
git commit -m "commit B"
git push origin master
```

#### Step 4: commit C

* change _hello_ in `App.java` to _hello [C]_, then:
```
./run.sh
git add src/**/App.java
git commit -m "commit C"
git push origin master
```

#### Step 5: reset

* Observe log: `git log --oneline`
* Reset to commit A:
```
# use HASH from 'commit A' in above log output

git reset --mixed HASH
```
* Observe log again: `git log --oneline`
* Note (as with `git reset --soft`):
    * `HEAD` moved, from `HEAD -> master -> C` to `HEAD -> master -> A`
    * Note that the working directory is still `C`
* However, unlike `git reset --soft`, in the index `App.java` is updated with changes from `A` 

That's it! [Back to exercise listing](./Exercises.md)
