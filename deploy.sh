#! /bin/bash

echo "Github password for zeekhuge :"
read -s PASS
hugo -d ../website
git add --all
git commit -m "add content"
git push $(echo "https://zeekhuge:$PASS:github.com/ZeekHuge/zeekhuge.github.io.git")
cd ../website
git add --all
git commit -m "add pages"
git push origin

exit 0
