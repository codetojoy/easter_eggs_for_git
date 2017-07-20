
### Scenario

* Illustrate the states and basic local workflow in Git.
* The states are: untracked, modified, staged, and committed.
* Reference 1.3, 2.2 - 2.4 [here](https://git-scm.com/book/en/v2)

### Tools

* more info [here](./reference_doc/Tools.md)

### Setup part 1 (create repo)

* in `/c/git_training`, create a new local repo: `git init basic_states`
* `cd /c/git_training/basic_states`
* follow [these steps](./reference_doc/SetupApp.md) to setup an app in this folder

### Exercise 1: basic happy flow

* let's view _status_ and confirm that all files are currently untracked:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* let's _stage_ the `src` folder and `build.gradle` file by adding to the index: 

<details><summary>Hint for this step:</summary>
<p><pre>
git add src build.gradle 
</pre></p></details>
<br/>

* let's view _status_, confirm files are staged:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* let's _commit_ the files which are currently staged:

<details><summary>Hint for this step:</summary>
<p><pre>
git commit -m "first commit"
</pre></p></details>
<br/>

* let's view _status_:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

That's it! [Next exercise](./egg_02_basic_states.md)
