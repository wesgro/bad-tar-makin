#!/bin/bash

# taring the folder from within the folder will create a tar
# that doesn't create a sub folder when it is untarred by yarm
echo "Make the bad tar"
cd ./test-package
tar -czvf ../lib/non-working-package.tgz ./
# taring from outside the folder will create a tar that untars into
# a subfolder
echo "Make the good tar"
cd ..
tar -czvf ./lib/working-package.tgz ./test-package