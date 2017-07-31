
echo "resetting ..."
git push --force origin $1:master

git reset --hard $1

sleep 1
echo "generating ..."
$EGGS_GIT_HOME/generate_project.sh

sleep 1
echo "running ..."
./run.sh

sleep 1
echo "commiting ..."
git add src build.gradle .gitignore

git commit -m "my first app"

git log --oneline

echo "Ready."
