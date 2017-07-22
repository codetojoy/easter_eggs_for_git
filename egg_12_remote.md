
#### Scenario

* Continuation of previous, with a merge-conflict involving `git stash`.
* Reference [here](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

#### Setup

* This example uses the same repository as the [previous example](./reference_doc/egg_11_remote.md) and assumes the state is the same as the end of the example.

#### Step 1: Commit #1 via GitHub

* Let's simulate work on `origin\master` so that the remote branch will be different.
* Via the GitHub website, edit `App.java`. Change the version to `V 1.0.2` and commit the change with the message "V 1.0.2".

#### Step 2: Local work

* In the local directory, edit `App.java`. Change `bonjour` to `hola`.
* Confirm the app works with [these steps](./reference_doc/ConfirmApp.md)
* Stage `App.java`, do not commit.

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/App.java
git status
</pre></p></details>
<br/>

#### Step 3: Fetch updates from remote

* To get snapshots from the remote server (without merging), run: `git fetch origin master`

#### Step 4: Attempt Merge

* Attempt to merge with: `git merge origin/master`. 
* Note that the merge complains about uncommitted work in `App.java`

#### Step 5: Stash Pending Work

* To save our work for later, run: `git stash`
* Confirm that the working directory is clean: `git status`

#### Step 6: Merge

* Apply merge: `git pull origin master`
* Confirm that the app prints `V 1.0.2`

#### Step 7: Restore Stashed Work

* To restore our saved work, run: `git stash apply`
* Confirm that the working directory is restored: `git status`

#### Step 8: Commit Spanish Greeting

* Confirm the app runs as "V 1.0.2" with the Spanish greeting.
* Stage `App.java` and commit the change with "Spanish greeting".

<details><summary>Hint for this step:</summary>
<p><pre>
./run.sh
git add src/**/App.java
git status
git commit -m "Spanish greeting"
</pre></p></details>
<br/>

#### Step 9: Push Changes To Remote

* Finally, sync the last commit with the remote repo.

<details><summary>Hint for this step:</summary>
<p><pre>
git push origin master
</pre></p></details>
<br/>

### Notes

* Note that `git pull origin master` combines `fetch` and `merge` into one command.

That's it! [Next exercise](./egg_13_remote.md)
