
#### Scenario

* Illustrate the states in Git.
* The states are: untracked, modified, staged, and committed.

#### Tools

* more info [here](../reference_doc/Tools.md)

#### Setup part 1 (create repo)

* create a folder: `mkdir -p /c/github_session/01_basic_states`
* go to folder: `cd /c/github_session/01_basic_states`
* create a new repository called `YOURNAME_tmp_sandbox_2017` (using your name)
* create a folder called `master` on your machine, inside clone the repo from GitHub
<details><summary>Hint for last item:</summary>
<p><pre>
cd master
# change repo as appropriate:
git clone https://github.com/codetojoy/YOURNAME_tmp_sandbox_2017.git
</pre></p></details>
<br/>

#### Setup part 3 (add code to new repo)

* clone this repo (easter_eggs_for_git) into a folder (e.g. `eggs`)
* set `EGGS_GIT_HOME` env var to be `~/eggs/easter_eggs_for_git` directory
    * `export EGGS_GIT_HOME=[PATH]/eggs/easter_eggs_for_git`
* `cd master/YOURNAME_tmp_sandbox_2017`
* run: `$EGGS_GIT_HOME/generate_project.sh` 
    * this will generate a simple Java application
    * confirm tests: `gradle test`
    * `cat ~/src/main/java/com/example/App.java` to understand it
    * run the application: `gradle -q clean run`
* add, commit, push the `src` folder, `build.gradle`, and `.gitignore`. [Here](../reference_doc/Commit.md) are generic steps.
* confirm changes on remote repo webpage

#### Step 1: tag master branch as V 1.0.0

