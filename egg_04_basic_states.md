

### Scenario

* We'll modify `App.java`, stage it, commit, then undo.
* To make things interesting, we'll also include `User` Java files in the commit.

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

* First, we move reset the HEAD pointer: `git reset --soft HEAD^` 
* If you check status, you'll see the working directory is restored to the previous commit.

#### Move App.java from 'committed' back to 'staged'

* We can remove `App.java` from the commit to the staging area: `git reset HEAD src/**/App.java`.
* Confim the above by checking status.

#### Move App.java from 'staged' back to original state 

* We can unstage `App.java` back to its original state: `git checkout -- src/**/App.java`
* Confirm that the version is now restored: `gradle -q clean run`

#### Move App.java from 'staged' back to original state 

* Finally, we re-use the original commit for the update: `git commit -c ORIG_HEAD`
* Examine the log and observe the new commit: `git log --pretty=oneline --decorate`

That's it! [Back to Exercises listing](./Exercises.md)
