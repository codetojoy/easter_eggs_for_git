
#### Scenario

* Happy path for a remote branch: multiple changes and an easy case for merging.
* Reference [here](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

#### Tools

* more info [here](./reference_doc/Tools.md)

#### Setup part 1 (delete old repo)

* if you have already created a `YOURNAME_tmp_sandbox_2017` repo, delete it on GitHub with [these steps](./reference_doc/DeleteRepo.md)

#### Setup part 2 (create repo)

* on GitHub, create a new repository called `YOURNAME_tmp_sandbox_2017` (using your name)
* create folder: `mkdir -p /c/github_training/remote/master`
* go to folder: `cd /c/github_training/remote/master`
* clone the repo from GitHub
<details><summary>Hint for last item:</summary>
<p><pre>
# REPO is a placeholder. Retrieve the value from the GitHub page for the repository
git clone REPO
</pre></p></details>
<br/>

#### Setup part 3 (add code to new repo)

* follow [these steps](./reference_doc/SetupApp.md) to setup an app in this folder

#### Step 1: add, commit

* add and commit all `java` files, `build.gradle`, and `.gitignore`

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/*.java build.gradle .gitignore
git status
git commit -m "my App"
</pre></p></details>
<br/>

#### Step 2: push to GitHub

* push changes to GitHub repo: `git push origin master`
* examine history on GitHub repo to confirm commit has been pushed

#### Step 3: Commit #1 via GitHub

* If paired, then the team should go to partner B's computer:
    * `clone` the **same** repository created by partner A
    * edit `App.java` so that version is `V 1.0.1`
    * Stage and commit `App.java`
    * push changes: `git push origin master`
* If not paired:
    * Let's simulate work on `origin\master` so that the remote branch will be different.
    * Via the GitHub website, edit `App.java`. Change the version to `V 1.0.1` and commit the change with the message "V 1.0.1".

#### Step 4: Commit #2 locally

* If paired, return to partner A's computer
* In the local directory, edit `App.java`. Change `hello` to `bonjour`.
* Confirm the app works with [these steps](./reference_doc/ConfirmApp.md)
* Stage `App.java`, and commit the change locally.

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/App.java
git status
git commit -m "French greeting"
</pre></p></details>
<br/>

#### Step 5: Fetch updates from remote

* Now, the local repo and the remote repo each have one commit.
* To get commits from the remote server (without merging), run: `git fetch origin master`

#### Step 6: Observe the situation, pre-merge

* To see the commits locally, run: `git log --oneline` . Observe the "French greeting" commit, but not the "V 1.0.1" commit.
* To see the commits performed on the remote repo, run: `git log HEAD..origin/master --oneline` . Observe the "V 1.0.1" commit.
* Another confirmation, observe `git status`.

#### Step 7: Merge

* To merge the changes, run: `git merge origin/master`. For a commit message, simply use "merging commits".
* Observe the log: `git log --oneline -decorate`
* Using `ungit` or another tool, look at the branch history. Note that merge commit has two parents.

#### Step 8: Confirm

* Run the app: `./run.sh`
* Confirm both commits: V 1.0.1 with French greeting.

#### Step 9: Push 

* To sync the merge with the remote repo, we push: `git push origin master`

### Notes

* Note that `git pull origin master` combines `fetch` and `merge` into one command.

That's it! [Next exercise](./egg_12_remote.md)
