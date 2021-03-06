#!/bin/bash

configPath=~/testInstallDir/
vimrcPath=$configPath.vimrc
tmuxconfPath=$configPath.tmux.conf

sudo apt install vim

sudo apt install tmux

curl -fLo $configPath.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ -f $vimrcPath ];then
echo "$vimrcPath file exist"
mv $vimrcPath $vimrcPath.back
else
echo "$vimrcPath file not exist"
fi


if [ -f $tmuxconfPath ];then
echo "$tmuxconfPath file exist"
mv $tmuxconfPath $tmuxconfPath.back
else
echo "$tmuxconfPath file not exist"
fi

wget -P $configPath https://raw.githubusercontent.com/kktao/vim-learn/master/.tmux.conf 

echo "success download .tmux.conf"
wget -P $configPath https://raw.githubusercontent.com/kktao/vim-learn/master/.vimrc

echo "success download .vimrc"

vim -c PlugInstall
exit 0
