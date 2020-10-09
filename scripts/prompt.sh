#!/bin/sh

cp .git-prompt.sh ~/

echo "source ~/.git-prompt.sh" >> ~/.bashrc
source ~/.bashrc
# 装飾を設定
echo "export PS1='\u@\[\e[1;36m\]\W\[\e[0m\]\[\e[1;32m\]$(__git_ps1 "(%s)")\[\e[0m\]$ '" >> ~/.bashrc
source ~/.bashrc

# restart shell
exec $SHELL -l
