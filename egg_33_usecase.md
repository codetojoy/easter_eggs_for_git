
#### Scenario

* Goal: revert a temporary repo to initial state

#### Tools

* more info [here](./reference_doc/Tools.md)

#### Setup 

* this assumes that you are working in a `YOURNAME_tmp_sandbox_2017` repo

#### Step 1: revert remote and local 

* replace `HASH_FOR_INIT_COMMIT` with hash for the initial commit:
```
git log --oneline

# see above output for HASH_FOR_INIT_COMMIT
git push --force origin HASH_FOR_INIT_COMMIT:master
git reset --hard HASH_FOR_INIT_COMMIT

git log --oneline
```

That's it! [Back to exercise listing](./Exercises.md)
