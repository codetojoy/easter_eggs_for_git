
### Scenario

* We'll modify `App.java`, stage it, then undo.

### Exercise 3: modified -> staged (and undo)

* Edit `App.java` by changing the version to `V 1.0.1 master`
* Confirm that the application works and has new version (steps [here](./reference_doc/ConfirmApp.md))
* view _status_, confirm `App.java` is now modified:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* view _status_, confirm files are staged:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* **Plot-twist**: requirements have changed! We no longer want new version in `App.java`. Revert `App.java` so that it is no longer modified:

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

That's it! [Next exercise](./egg_04_basic_states.md)

