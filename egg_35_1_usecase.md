
#### Scenario

* create a remote topic branch B
* do 'work X' in B
* do 'work Y' in master
* pull work Y from master into B

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

#### Step 2: create branch for 'issue 5150'

* Issue 5150 states that we need a new `Service.java` file
* create and checkout branch:
```
git branch issue5150
git branch
git checkout issue5150
```
* push branch:
`git push origin issue5150`

#### Step 3: write code for issue 5150 (work X)

* add new `Service.java`, then:
```
git add src/**/Service.java
./run.sh
git status
git commit -m "fix issue 5150"
```
* push change:
`git push origin issue5150`

#### Step 4: add code to master (work Y)

```
git branch
git checkout master
```
* add new `Endpoint.java`, then:
```
git add src/**/Endpoint.java
./run.sh
git status
git commit -m "new endpoint"
```
* push change:
`git push origin master`

#### Step 5: merge work Y from master into branch

```
git branch
git checkout issue5150
git merge master
git push origin issue5150
```
* confirm that `Service.java` and `Endpoint.java` are in the branch

That's it! [Back to exercise listing](./Exercises.md)
