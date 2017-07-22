
### A Day in the Life: Developer Workflow

* This doc is an example developer workflow.
* Assume the team has developer named _Bob_.

#### 9 am

* Bob runs `git status` and has no work pending: a clean index.
* Now is a good time to fetch/merge changes from remote repo, because there won't be any conflicts:
```
# if using the master branch:
git fetch origin master
git merge orgin/master
```

#### 11 am

* Bob has worked on new functionality, and wants to commit.
* There are prep steps, paired check-in, and commit steps. 

##### Prep steps

* As always, run unit tests. If needed, perform manual test of the new functionality.
* Check the staging index: `git status`
* Use `git add` to prepare the staging with the appropriate files.
* Use `git fetch`, `git merge` again to pull changes from the remote repo. If there are conflicts, see [example 12](./egg_12_remote.md) or [example 13](./egg_13_remote.md).

##### Paired check-in steps

* Ask someone to pair up.
* Use TortoiseGit and WinMerge to explain the changes. This is the same as always. 

##### Commit steps

* (In the short-term, be sure to _remain paired-up_ for these steps.)
* Using `git commit` or TortoiseGit, commit the changes.
* Push the changes to the remote repo with `git push origin master` (this assumes the current branch is `master`).
    * Effectively, consider (a) local commit and (b) remote push as one transaction. There is no reason to delay pushing to the remote repo.

#### 2 pm

* Bob switches a task to the `maintenance` branch. [Example 22](./egg_22_workflow.md) contains a detailed look at using branches and tags.
* For now, the take-away is that Bob will have a separate folder for the `maintenance` branch. This is identical to the legacy style with Subversion.
* The steps above are the same, except use `maintenance` (or the appropriate branch name) in place of `master`.

