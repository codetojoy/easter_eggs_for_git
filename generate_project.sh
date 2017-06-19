#!/bin/bash

if [ "${EGGS_GIT_HOME}" == "" ] ; then
    echo "Please set EGGS_GIT_HOME variable"
fi

PACKAGE_DIR=net/codetojoy/example

mkdir -p src/main/java/$PACKAGE_DIR
mkdir -p src/test/java/$PACKAGE_DIR

REF_PROJ_DIR=${EGGS_GIT_HOME}/reference_project

cp $REF_PROJ_DIR/src/main/java/$PACKAGE_DIR/*.java src/main/java/$PACKAGE_DIR
cp $REF_PROJ_DIR/src/test/java/$PACKAGE_DIR/*.java src/test/java/$PACKAGE_DIR
cp $REF_PROJ_DIR/build.gradle .

cp $REF_PROJ_DIR/.gitignore .

echo "Ready."
