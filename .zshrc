# prompt
# source ~/.git-prompt.sh
autoload -Uz vcs_info
setopt prompt_subst # プロンプト表示する度に変数を展開
zstyle ':vcs_info:*' formats '%b' # vcs_info_msg_0_に格納する値を指定(%b:カレントブランチ)
# zshのプロンプトが表示される度に実行される関数
precmd () {
    vcs_info
    if [ $vcs_info_msg_0_ ]; then
        export PROMPT="%n@%F{cyan}%B%c%F{green}%B(${vcs_info_msg_0_})%b%F{white}$ "
    else
        export PROMPT="%n@%F{cyan}%B%c%b%F{white}$ "
    fi
}

# zsh
alias zenv='vim ~/.zshenv'
alias zrc='vim ~/.zshrc'
alias szenv='source ~/.zshenv'
alias szrc='source ~/.zshrc'
alias czenv='cat ~/.zshenv'
alias czrc='cat ~/.zshrc'

# Git
alias gb='git branch'
alias gck='git checkout'
alias gckb='git checkout -b'
alias gc='git commit -m'
alias gpush='git push'
alias gpull='git pull'
alias glog='git log'
alias greset='git reset --soft HEAD^'

# Python
export PIPENV_VENV_IN_PROJECT=true
alias py='python3'
alias pe='pipenv'

# Docker
alias dk='docker'
alias dks='docker-compose'
alias dksdown='docker-compose down --rmi all'
alias dkrmv='docker volume rm $(docker volume ls -qf dangling=true)'
function dk_mysql(){
    mysql -u root -p -h 127.0.0.1 -P $@
}
function dk_exec(){
    docker exec -it $@ sh
}

# Others
alias tf='terraform'
function ngrk(){
    ngrok http ${1:-3000}
}

# Node
export PATH="$PATH:$HOME/.nodenv/bin"
eval "$(nodenv init -)"