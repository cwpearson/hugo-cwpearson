#! /bin/bash

## Try to find cwpearson.github.io

paths=`find $HOME -name cwpearson.github.io`
numpaths=`echo "$paths" | wc -l`

if [[ "$numpaths" -ne "1" ]]; then
  echo "Found more than one cwpearson.github.io"
  exit -1
fi

# Clean up repo
cd $paths
git rm -r *

# Build website
cd -
hugo -d $paths

# push new content
cd $paths
git add *
git commit -m "[build.sh] Deployed from hugo-cwpearson"
git push