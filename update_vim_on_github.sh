#!/bin/bash 

cd ~/Tools/vim/vim_config
rm -r vim 
rm vimrc
echo 'remove old vim files success'

cp -r ~/.vim .
cp ~/.vimrc .
echo 'copy vim files and directory to vim_config success'

mv .vim vim 
mv .vimrc vimrc
echo 'rename files and directory success'

git add vim 
git add vimrc 

echo 'type the description of this new commit'
read message
git commit -m "${message}"
git push origin master

exit 0
