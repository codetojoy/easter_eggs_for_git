
### Setup

* To use any of these utilities, refresh this repository.
* If you have cloned it, then `git pull origin master`
* If you have downloaded it, then download again.
* Next:
```
cd YOUR_TMP_REPO
cp $EGGS_GIT_HOME/utils/*.sh .
chmod 777 *.sh
```

### Reset a repository

* Here is an example history for the temporary repo:
``` 
$ git log --oneline

b5ecc4e commit A
74ac5ae my first app
a5ddb5d Initial commit
```

* Assume that we want to reset the repo, locally and remotely, to commit `a5ddb5d`.
* Assume further that we want to re-generate the project and commit locally.
* This can all be done with:
```
./reset_repo.sh a5ddb5d
``` 

### Automate the 'add, commit, push' sequence

* To automate this sequence:
```
git add src/**/App.java
git commit -m "commit A" 
git push origin master
```
* simply execute this:
```
./add_commit_push.sh "commit A"
``` 

### Automate editing App.java

* Suppose that we want to edit `App.java` to change _hello_ to _HELLO_A_
* This script will do that:
```
./edit.sh hello HELLO_A 
```
* Be careful with spaces and special characters.
