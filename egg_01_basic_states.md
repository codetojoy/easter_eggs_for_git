
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

* view _status_ and confirm that all files are currently untracked:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* _stage_ the `App.java` file and `build.gradle` file by _adding_ to the index: 

<details><summary>Hint for this step:</summary>
<p><pre>
git add src/**/App.java build.gradle 
</pre></p></details>
<br/>

* view _status_, confirm files are staged:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* _commit_ the files which are currently staged:

<details><summary>Hint for this step:</summary>
<p><pre>
git commit -m "first commit"
</pre></p></details>
<br/>

* view _status_:

<details><summary>Hint for this step:</summary>
<p><pre>
git status
</pre></p></details>
<br/>

* confirm commit by looking at the log:
`git log --pretty=oneline --decorate`

That's it! [Next exercise](./egg_02_basic_states.md)
