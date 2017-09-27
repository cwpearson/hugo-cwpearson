#! /bin/bash

set -eoux pipefail

HUGO_ROOT=`pwd`

## Try to find cwpearson.github.io
IO_ROOT=`find $HOME -name cwpearson.github.io`

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


# Clean up github.io repo
echo "Updating and cleaning cwpearson.github.io"
cd "$IO_ROOT"
git pull
rm -rf *

# Build website
cd "$HUGO_ROOT"
echo "Updating theme"
git submodule update --recursive --remote
echo "Building site"
hugo -d "$IO_ROOT"

# push new content
cd $IO_ROOT
git add *
git commit -m "[build.sh] Deployed from hugo-cwpearson"
git push
