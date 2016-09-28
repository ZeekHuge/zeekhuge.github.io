#! /bin/bash

echo "Github password for zeekhuge :"
read -s PASS
hugo -d ../website
git add --all
git commit -m "add content"
echo -e "zeekhuge\n$PASS" | git push origin 
cd ../website
git add --all
git commit -m "add pages"
git push origin

exit 0
