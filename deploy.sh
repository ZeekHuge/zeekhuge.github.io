#! /bin/bash

hugo -d ../website
git add --all
git commit -m "add content"
git push origin
cd ../website
git add --all
git commit -m "add pages"
git push origin

exit 0
