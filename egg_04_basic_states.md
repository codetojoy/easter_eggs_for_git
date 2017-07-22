
### Scenario

* We'll modify `App.java`, stage it, commit, then undo.
* To make things interesting, we'll also include `User` Java files in the commit (which we want to keep).
* To fully understand this example, refer to [7.7 Git Reset Demystified](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified)
* For `HEAD` versus `ORIG_HEAD`, refer [here](https://stackoverflow.com/questions/964876)

### Exercise 4: modified -> staged -> commit (and undo)

* Examine the current log and make a note: `git log --pretty=oneline --decorate`
* Edit `App.java` by changing the version to `V 1.0.1 master`
* Confirm that the application works and has new version (steps [here](./reference_doc/ConfirmApp.md))
* view _status_, confirm `App.java` is now modified:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* We want the new version, plus the User functionality. Stage all of `App.java`, `User.java`, `Users.java`, `UsersTestCase.java` by _adding_ to the index:

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/*.java
</pre></p></details>
<br/>

* Confirm the status:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* Commit the changes:

<details><summary>Hint for this step:</summary>
<p><pre>
git commit -m "now version 1.0.1, plus User functionality"
</pre></p></details>
<br/>

* Examine the log and observe the new commit: `git log --pretty=oneline --decorate`
* **Plot-twist**: requirements have changed! We no longer want new version in `App.java`. So we need to remove it from the commit.

#### Use 'reset' to alter history

* First, we restore the previous commit to its pre-commit state: `git reset --soft HEAD^` 
    * `HEAD` is _the last commit on the current branch_
    * `HEAD^` is _the **parent** of the last commit on the current branch_
* If you check status, you'll see the working directory is restored to the previous commit.

#### Move App.java from 'committed' back to 'staged'

* We can remove `App.java` from the commit to the staging area: `git reset HEAD src/**/App.java`
* Confim the above by checking status.

#### Move App.java from 'staged' back to original state 

* We can unstage `App.java` back to its original state: `git checkout -- src/**/App.java`
* Confirm that the version is now restored: `./run.sh`

#### Move App.java from 'staged' back to original state 

* Finally, we re-use the original commit for the update: `git commit -c ORIG_HEAD`
    * Alter the commit message to be `just new User functionality!`
    * Note that `ORIG_HEAD` is the value of `HEAD` before the `git reset`
* Examine the log and observe the new commit: `git log --pretty=oneline --decorate`
    * Observe the commit now has the new message.

That's it! [Back to Exercises listing](./Exercises.md)
