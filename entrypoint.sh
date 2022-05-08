#! /bin/sh

npm config set registry https://artifactory.ubisoft.org/api/npm/npm/

hexo_dir=/home/hexo/.hexo
cd $hexo_dir

hexo --help
if [ $? -ne 0 ]; then
    echo "---- fix env ----"
    rm -rf node_modules && npm install --force
else
    echo "---- check env success ----"
fi

count=`ls $hexo_dir | wc -l`
if [ "$count" -eq "0" ];then
    echo "---- init ----"
    hexo init
    npm install
else
    echo "---- regenerate ----"
    hexo clean
    hexo generate
fi

echo "---- start the server ----"
hexo server
