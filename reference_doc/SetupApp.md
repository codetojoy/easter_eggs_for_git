
#### Setup Application: First Time

* if you haven't already: 
    * download this repo (easter_eggs_for_git) into `/c/git_training/eggs` 
    * set `EGGS_GIT_HOME` env var to be `/c/git_training/eggs/easter_eggs_for_git` 
        * `export EGGS_GIT_HOME=/c/git_training/eggs/easter_eggs_for_git`

#### Setup Application

* `cd` to the folder you want to setup
* run: `$EGGS_GIT_HOME/generate_project.sh` 
    * this generates a simple Java application
    * confirm tests: `gradle test`
    * run the application: `gradle -q clean run`
    * `cat ~/src/main/java/com/example/App.java` to understand it
