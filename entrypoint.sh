#! /bin/sh

cd /home/hexo/.hexo
hexo --help

hexo_dir=/home/hexo/.hexo
cd $hexo_dir

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
