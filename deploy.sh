#!/bin/sh

CWD=`pwd`

cd ../graphbrain-archive/docs
make html

cd $CWD
cp -r ../graphbrain-archive/docs/build/html/* .

git add *
git commit -am "automatic deploy"
git push
