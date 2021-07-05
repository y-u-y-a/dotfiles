#!/bin/sh

FILE_PATH=~/.bash_profile

# <Homebrew> ====================================================
echo 'Start Install Homebrew...'
/bin/bash -c '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)'
# caskによるインストール先を変更
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

#<Git> ==========================================================
echo 'Start Install Git...'
brew install git

#<MySQL> ========================================================
echo 'Start Install MySQL...'
brew install mysql@5.6
brew link mysql@5.6 --force # シンボリックを貼る

# <Node> =======================================================
echo 'Start Install Node.js...'
brew install nodebrew # バージョン管理
echo 'export PATH=$PATH:$HOME/.nodebrew/current/bin' >> FILE_PATH
source FILE_PATH

nodebrew install-binary stable # 最新の安定版をインストール

npm install -g typescript

# <Ruby> ========================================================
echo 'Start Install Ruby...'
brew install\
    rbenv\
    ruby-build\
    readline
brew link readline --force # シンボリックを貼る
RUBY_CONFIGURE_OPTS='--with-readline-dir=$(brew --prefix readline)' # readlineを通してRubyをインストール

echo "eval '$(rbenv init -)'" >> FILE_PATH
echo 'export PATH=$PATH:$HOME/.rbenv/shims:/usr/local/bin' >> FILE_PATH
source FILE_PATH

rbenv install --list
read -p 'Rubyのバージョンを指定してください。' rubyVer < /dev/tty
rbenv install ${rubyVer}
rbenv global ${rubyVer}
rbenv rehash

# <Python> =======================================================
echo 'Start Install Python...'
brew install pyenv # バージョン毎にライブラリ管理
brew install pipenv # プロジェクト毎にライブラリ管理

echo "eval '$(pyenv init -)'" >> FILE_PATH
echo 'export PYENV_ROOT=$HOME/.pyenv' >> FILE_PATH
echo 'export PATH=$PATH:$PYENV_ROOT/bin' >> FILE_PATH
source FILE_PATH

pyenv install --list
read -p 'Pythonのバージョンを指定してください。' pythonVer < /dev/tty
pyenv install ${pythonVer}
pyenv global ${pythonVer}
pyenv rehash

# <PHP> ===========================================================
echo 'Start Install PHP...'
brew install php@7.4
# read -p "PHPのバージョンを指定してください。" phpVer < /dev/tty

# # phpenv
# git clone https://github.com/CHH/phpenv.git # brewで上手くいかないので(phpenv)
# phpenv/bin/phpenv-install.sh # インストールしたファイルを実行
# # php-build
# git clone git://github.com/CHH/php-build.git $HOME/.phpenv/plugins/php-build
# brew install re2c openssl bison libxml2 autoconf automake icu4c libjpeg libpng libmcrypt
# # php-build内に環境変数を設定
# PHP_BUILD_CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl)"

# echo 'eval "$(phpenv init -)"' >> FILE_PATH
# echo 'export PATH=$PATH:$HOME/.phpenv/bin' >> FILE_PATH
# source FILE_PATH

# phpenv install ${phpVer}
# phpenv global ${phpVer}
# phpenv rehash


# <Go> =============================================================
echo 'Start install Go...'
brew install go

echo 'export GOPATH=$HOME/go' >> FILE_PATH
echo 'export PATH="$PATH:$GOPATH/bin"' >> FILE_PATH
echo 'export GO111MODULE=on' >> FILE_PATH # Go Modulesを使用
echo 'export GOPROJECT=$HOME/src/github.com/y-u-y-a' >> FILE_PATH

source FILE_PATH


# <GUIアプリ> =======================================================
echo 'Start Install Apps...'

brew install --cask\
    google-chrome\
    firefox\
    skype\
    slack\
    visual-studio-code\
    postman\
    sequel-pro\
    github\
    docker\
    sourcetree\
    aws-cli\
    aws-vault\
    google-cloud-sdk\
    google-backup-and-sync\
    chromedriver\
    heroku/brew/heroku\
    ngrok\
    watch\
    bat\
    # kubectl\
    # minikube\
    # virtualbox\
    # vagrant\
    # vagrant-manager\
