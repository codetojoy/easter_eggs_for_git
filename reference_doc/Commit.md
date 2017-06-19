
#### Commit steps

* use `git pull origin master` to pull changes from remote repo
* assuming there are no conflicts ...
* confirm tests: `gradle test`
* use Tortoise/WinMerge to confirm changes (possibly pair with someone)
* examine files, then stage for commit (by adding to the index):
```
git status
git add src/**/*.java
```
* examine index, then commit and push:
```
git status
git commit -m "don't forget to write a decent message"
git push origin master 
```


