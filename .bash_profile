source ~/.bashrc

export PATH="$PATH:/usr/local/opt/mysql-client/bin"
export PATH="$PATH:/usr/local/opt/openssl@1.1/bin"
export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

export PATH="$PATH:/usr/local/opt/mysql@5.6/bin"
export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH=$HOME/.nodebrew/current/bin:$PATH

eval "$(rbenv init -)"
export PATH="$PATH:$HOME/.rbenv/shims:/usr/local/bin"

eval "$(pyenv init -)"
export PATH="$PATH:$HOME/.pyenv/bin"
export PIPENV_VENV_IN_PROJECT=1
export PYTHONDONTWRITEBYTECODE=1

export PATH="$PATH:/usr/local/opt/php@7.4/bin"
export PATH="$PATH:/usr/local/opt/php@7.4/sbin"

export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"
export GO111MODULE=on
export GOPROJECT=$GOPATH/src/github.com/y-u-y-a

export PATH="$PATH:$HOME/flutter/bin"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export AWS_DEFAULT_PROFILE=admin-yuya
