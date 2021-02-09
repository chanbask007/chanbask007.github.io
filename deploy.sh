#!/usr/bin/env sh

#abort on errors
set -e

#build
npm run build

#navigate into the build output repository
cd dist

git init
git add -A
git commit -m "deployed"

git push -f git@github.com:chanbask007/chanbask007.github.io.git master

cd -


