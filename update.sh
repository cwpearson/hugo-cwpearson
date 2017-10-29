#! /bin/bash

set -eoux pipefail

HUGO_ROOT=`pwd`

cd "$HUGO_ROOT"
echo "Updating theme"
git submodule update --recursive --remote