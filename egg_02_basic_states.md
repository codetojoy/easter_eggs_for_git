
### Scenario

* `User.java` is untracked. We'll stage it and then undo.

### Exercise 2: untracked -> staged (and undo)

* Stage `User.java` by _adding_ to the index:

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/User.java
</pre></p></details>
<br/>

* view _status_, confirm files are staged:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* **Plot-twist**: requirements have changed! We no longer want `User.java` in the repo: remove from the index: 

<details><summary>Hint for this step:</summary>
<p><pre>
git rm --cached src/**/User.java
</pre></p></details>
<br/>

* view _status_, confirm files are staged:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

That's it! [Next exercise](./egg_02_basic_states.md)

