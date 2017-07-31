
#!/bin/bash

cp src/main/java/com/example/App.java tmp.java

sed -i -- 's/'"$1"'/'"$2"'/g' tmp.java

mv tmp.java src/main/java/com/example/App.java

cat src/main/java/com/example/App.java

echo "Ready." 
