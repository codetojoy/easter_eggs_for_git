
#### Scenario

* Given commit A, B, C, D, revert to B
* Reference [here](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

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

That's it! [Back to exercise listing](./Exercises.md)
