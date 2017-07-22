
### A Day in the Life: Developer Workflow.

* This doc is an example developer workflow.
* Assume the team has developers named _Alice_ and _Bob_.

#### 9 am

* Alice runs `git status` and has no work pending: a clean index.
* Now is a good time to fetch/merge changes from remote repo. This can be done with the `pull` command:

<details><summary>Hint:</summary>
<p><pre>
# if using the master branch:
git pull origin master
</pre></p></details>
</details>
<br/>

* assuming there are no conflicts ...
* confirm tests: `gradle test`
* use Tortoise/WinMerge to confirm changes (possibly pair with someone)
* check status of the index
<details><summary>Hint:</summary>
<p><pre>
git status
</pre></p></details>
</details>
<br/>

* stage for commit (by adding to the index):
<details><summary>Hint:</summary>
<p><pre>
# this is just an example of adding Java files
git add src/**/*.java
</pre></p></details>
</details>
<br/>

* confirm status of index
* commit and push
<details><summary>Hint:</summary>
<p><pre>
git commit -m "don't forget to write a decent message"
git push origin master 
</pre></p></details>
</details>
<br/>
