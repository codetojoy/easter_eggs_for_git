
#### Scenario

* Continuation of previous, with a true merge conflict.
* Reference [here](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes)

#### Setup

* This example uses the same repository as the [previous example](./reference_doc/egg_12_remote.md) and assumes the state is the same as the end of the example.

#### Step 1: Commit #1 via GitHub

* If paired, then the team should go to partner B's computer:
    * using the **same** repository created by partner A: `git fetch origin master`, then `git merge origin/master`
    * edit `App.java` so that version is `V 1.0.3`
    * Stage and commit `App.java`
    * push changes: `git push origin master`
* If not paired:
    * Via the GitHub website, edit `App.java`. Change the version to `V 1.0.3` and commit the change with the message "V 1.0.3".

#### Step 2: Local work

* If paired, return to partner A's computer
* **Plot-twist**: the team has decided that the current version is "V 1.1.0".
* In the local directory, edit `App.java`. Change the version to `V 1.1.0`.
* Confirm the app works with [these steps](./reference_doc/ConfirmApp.md)
* Stage `App.java`, and commit the change with "V 1.1.0".

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/App.java
git status
git commit "V 1.1.0"
</pre></p></details>
<br/>

#### Step 3: Fetch updates from remote

* To get snapshots from the remote server (without merging), run: `git fetch origin master`

#### Step 4: Attempt Merge

* Attempt to merge with: `git merge origin/master`. 
* Note that the merge complains about a conflict.
* View `App.java` (with `cat src/main/java/com/example/App.java`) to see it is now a conflict file.

#### Step 5.1: Resolution Option 1

* Assume that "V 1.1.0" is correct and should be used over "V 1.0.3".
* If you are comfortable using a merge tool (e.g. with TortoiseGit), then resolve the conflict using that.

#### Step 5.2: Resolution Option 2

* Assume that "V 1.1.0" is correct and should be used over "V 1.0.3".
* In this case, we want the [KISS principle](https://en.wikipedia.org/wiki/KISS_principle) and perform some extra manual work. This is _not_ the "Git way" but is straight-forward.
* The strategy: allow the remote commit to "win", then perform a new commit with our change. 

* First, abort the merge: `git merge --abort`
* Confirm that `App.java` has "V 1.1.0" and copy it to a safe place.
* Next, attempt the merge again (it will fail): `git merge origin/master`
* Allow the "V 1.0.3" to "win" temporarily: `git checkout --theirs src/**/App.java`
* Confirm the app is now "V 1.0.3": `./run.sh`
* Use a diff tool (e.g. WinMerge) to add desired changes from the safe-place `App.java` to `App.java` 

* Confirm "V 1.1.0", add, commit:
```
./run.sh
git add src/**/App.java
git commit -m "V 1.1.0 wins"
```

#### Step 9: Push Changes To Remote

* Finally, sync the last commit with the remote repo.

<details><summary>Hint for this step:</summary>
<p><pre>
git push origin master
</pre></p></details>
<br/>

That's it! [Back to exercise listing](./Exercises.md)
