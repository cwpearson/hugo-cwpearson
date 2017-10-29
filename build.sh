#! /bin/bash

set -eoux pipefail

HUGO_ROOT=`pwd`

## Try to find cwpearson.github.io
IO_ROOT=`find $HOME -type d ! -perm -a+r -prune -o -name cwpearson.github.io -print`

if [[ -z "$IO_ROOT" ]]; then
  echo "Couldn't find cwpearson.github.io in $HOME"
  exit -1
fi

echo "Found" "$IO_ROOT"
numpaths=`echo "$IO_ROOT" | wc -l`

echo $numpaths

if [[ "$numpaths" -ne "1" ]]; then
  echo "Found more than one cwpearson.github.io"
  exit -1
fi

# Try building the website locally
cd "$HUGO_ROOT"
echo "Building site"
hugo

# Clean up local build
rm -r "$HUGO_ROOT/public"

# Clean up github.io repo
echo "Updating and cleaning cwpearson.github.io"
cd "$IO_ROOT"
git pull
rm -rf *

# Build website
cd "$HUGO_ROOT"
echo "Building site"
hugo -d "$IO_ROOT"

# push new content
cd $IO_ROOT
git add *
git commit -m "[build.sh] Deployed from hugo-cwpearson"
git push
