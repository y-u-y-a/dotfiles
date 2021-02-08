source ~/.git-prompt.sh
export PS1='\u@\[\e[1;36m\]\W\[\e[0m\]\[\e[1;32m\]$(__git_ps1 "(%s)")\[\e[0m\]$ '

alias bashpro='vim ~/.bash_profile'
alias bashrc='vim ~/.bashrc'
alias src_bashpro='source ~/.bash_profile'
alias src_bashrc='source ~/.bashrc'

alias gt='git'
alias ck='git checkout'
alias br='git branch'

export PIPENV_VENV_IN_PROJECT=true
alias py='python3'
alias pe='pipenv'

alias mamp_mysql="/Applications/MAMP/Library/bin/mysql"
alias dk_mysql='mysql -u root -p -h 127.0.0.1 -P 4306'

alias dk='docker'
alias dks='docker-compose'
alias dks_down='docker-compose down --rmi all --volumes'
function dk_exec(){
    docker exec -it $@ sh
}

alias tf='terraform'
