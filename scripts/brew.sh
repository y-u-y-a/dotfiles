#!/bin/sh

# <Homebrew> ====================================================
echo 'Start Install Homebrew...'
/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'
# caskによるインストール先を変更
export HOMEBREW_CASK_OPTS='--appdir=/Applications'

#<Git> ==========================================================
echo 'Start Install Git...'
brew install git

#<MySQL> ========================================================
echo 'Start Install MySQL...'
brew install mysql@5.6
brew link mysql@5.6 --force # シンボリックを貼る

# <Ruby> ========================================================
echo 'Start Install Ruby...'
brew install\
    rbenv\
    ruby-build\
    readline
brew link readline --force # シンボリックを貼る
RUBY_CONFIGURE_OPTS='--with-readline-dir=$(brew --prefix readline)' # readlineを通してRubyをインストール

echo "eval '$(rbenv init -)'" >> ~/.bash_profile
echo 'export PATH=$PATH:$HOME/.rbenv/shims:/usr/local/bin' >> ~/.bash_profile
source ~/.bash_profile

rbenv install --list
read -p 'Rubyのバージョンを指定してください。' rubyVer < /dev/tty
rbenv install ${rubyVer}
rbenv global ${rubyVer}
rbenv rehash

# <Python> =======================================================
echo 'Start Install Python...'
brew install pyenv # バージョン毎にライブラリ管理
brew install pipenv # プロジェクト毎にライブラリ管理

echo "eval '$(pyenv init -)'" >> ~/.bash_profile
echo 'export PYENV_ROOT=$HOME/.pyenv' >> ~/.bash_profile
echo 'export PATH=$PATH:$PYENV_ROOT/bin' >> ~/.bash_profile
source ~/.bash_profile

pyenv install --list
read -p 'Pythonのバージョンを指定してください。' pythonVer < /dev/tty
pyenv install ${pythonVer}
pyenv global ${pythonVer}
pyenv rehash

# <Node> =======================================================
# brewでnodeをインストールしている場合はアンインストール
# brew uninstall --force node

echo 'Start Install Node.js...'
brew install nodebrew # バージョン管理
echo 'export PATH=$PATH:$HOME/.nodebrew/current/bin' >> ~/.bash_profile
source ~/.bash_profile

nodebrew ls-remote # インストール可能なバージョン一覧
read -p 'Node.jsのバージョンを指定してください。' nodeVer < /dev/tty
nodebrew install-binary ${nodeVer}
nodebrew use ${nodeVer}
# nodebrew install-binary stable # 最新の安定版をインストール

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

# echo 'eval "$(phpenv init -)"' >> ~/.bash_profile
# echo 'export PATH=$PATH:$HOME/.phpenv/bin' >> ~/.bash_profile
# source ~/.bash_profile

# phpenv install ${phpVer}
# phpenv global ${phpVer}
# phpenv rehash


# <Go> =============================================================
echo 'Start install Go...'
brew install go

echo 'export GOPATH=$HOME/go' >> ~/.bash_profile
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.bash_profile
echo 'export GO111MODULE=on' >> ~/.bash_profile # Go Modulesを使用
echo 'export GOPROJECT=$HOME/src/github.com/y-u-y-a' >> ~/.bash_profile

source ~/.bash_profile


# <GUIアプリ> =======================================================
echo 'Start Install Apps...'

brew cask install\
    google-chrome\
    firefox\
    slack\
    skype\
    visual-studio-code\
    sourcetree\
    sequel-pro\
    github\
    docker\
    docker-toolbox\
    google-backup-and-sync\
    chromedriver\
    heroku/brew/heroku\
    google-cloud-sdk\
    ngrok\
    watch\
    bat\
    postman\
    # kubectl\
    # minikube\
    # virtualbox\
    # vagrant\
    # vagrant-manager\
