#! /bin/bash

echo "Github password for zeekhuge :"
read -s PASS
rm -rf ../website
mkdir ../website
hugo -d ../website
git add --all
git commit -m "add content"
git push $(echo "https://zeekhuge:$PASS@github.com/ZeekHuge/zeekhuge.github.io.git") || notify-send "Failed to update the website"
cd ../website
git init
git add --all
git commit -m "add pages"
git push -f $(echo "https://zeekhuge:$PASS@github.com/ZeekHuge/zeekhuge.github.io.git") $(echo "master")
exit 0
