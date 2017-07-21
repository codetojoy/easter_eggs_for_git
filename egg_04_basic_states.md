
git reset --soft HEAD^ 
git reset HEAD src/**/App.java
git checkout -- src/**/App.java
gradle -q clean run 
git commit -c ORIG_HEAD  

### Scenario

* We'll modify `App.java`, stage it, commit, then undo.
* To make things interesting, we'll also include `User.java` in the commit.

### Exercise 4: modified -> staged -> commit (and undo)

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

* **Plot-twist**: requirements have changed! We no longer want new version in `App.java`. So we need to remove it from the commit.

<details><summary>Hint for this step:</summary>
<p><pre>
git checkout -- src/**/App.java
</pre></p></details>
<br/>

* Confirm that the application works and has old version (steps [here](./reference_doc/ConfirmApp.md))
* view _status_, confirm the index is clean:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

That's it! [Back to Exercises listing](./Exercises.md)
