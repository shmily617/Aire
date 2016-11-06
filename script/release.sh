#!/bin/bash
cd ..
host=$1
grayVersion=$2
nodeEnv=$3
reCompile=$5
date=$(date +%Y-%m-%d-%H-%M-%S)
codeVersion=`git tag|tail -1`

# if [ "$reCompile" -eq 1 ]; then
#     git show ${codeVersion}|head -10
#     echo "记得打版本标记(git tag -a x.x.x -m xxx)，confirm the code git tag version？（y/n）"
#     read confirm
#     if [ "$confirm" = "n" ]; then
#         exit
#     fi
# fi

echo "host=${host}"
echo "grayVersion=${grayVersion}"
echo "codeVersion=${codeVersion}"
echo "reCompile=${reCompile}"
echo "Confirm the host and gray version？（y/n）"
read confirm
echo "$confirm"
if [ "$confirm" = "n" ]; then
exit
fi

if [ "$reCompile" -eq 1 ]; then
# rm -vr ./dist/*
echo "do webpack..."
#GRAY_VERSION=${grayVersion} NODE_ENV=${nodeEnv} webpack --config webpack.config.upline.js --progress -p -d
GRAY_VERSION=${grayVersion} CODE_VERSION=${codeVersion} NODE_ENV=${nodeEnv} XNG_ENV=${xngEnv} node build/build.js
#rm -v ./dist/static/js/*.map
cp -avr resource/* dist/static/
fi

echo "scp files to ${host}"
scp -r ./dist ${host}:/tmp/ 

echo "operate remote host..."
ssh ${host} "
sudo rm -r /data/lmj/Aire/${grayVersion}-latest/;
sudo cp -r /data/lmj/Aire/${grayVersion}/ /data/lmj/Aire/${grayVersion}-latest/;
sudo cp -r /data/lmj/Aire/${grayVersion}/ /data/lmj/Aire/${grayVersion}-${date};
sudo cp -r /tmp/dist/* /data/lmj/Aire/${grayVersion}/;
sudo rm -r /tmp/dist/;
"

echo "success!"