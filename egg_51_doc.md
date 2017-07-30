
### Reset

* reference [here](https://git-scm.com/book/en/v2/Git-Tools-Reset-Demystified)
* *move pointer* means *move the branch pointed to by HEAD*

| --soft  | --mixed (default) | --hard |
| ------------- | ------------- | ------------- |
| move pointer  | move pointer  | move pointer  | 
| | index == HEAD  | index == HEAD | 
| | | workingDir == index  | 

#### reset to previous commit

* Assume we have commits `A -> B -> C` on `master`.
* Assume that `HEAD -> master -> C`.
* Consider `git reset B` with various options:

| --soft  | --mixed (default) | --hard |
| ------------- | ------------- | ------------- |
| undo C | undo C | undo C |
| | unstage files  | unstage files |
| | | undo work  | 

#### --soft 

* assume `HEAD -> master -> xyz5150`
* `git reset --soft abc1234`
    * then `HEAD -> master -> abc1234`

#### --mixed 

* assume `HEAD -> master -> xyz5150`
* `git reset --soft abc1234`
    * then `HEAD -> master -> abc1234`
    * updates staging area (aka _index_) with contents of what HEAD points to

#### --hard 

* assume `HEAD -> master -> xyz5150`
* `git reset --soft abc1234`
    * then `HEAD -> master -> abc1234`
    * updates staging area (aka _index_) with contents of what HEAD points to
    * updates working directory with contents of index

