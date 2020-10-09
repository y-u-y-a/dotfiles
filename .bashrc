source ~/.git-prompt.sh
export PS1='\u@\[\e[1;36m\]\W\[\e[0m\]\[\e[1;32m\]$(__git_ps1 "(%s)")\[\e[0m\]$ '

alias bashpro='vim ~/.bash_profile'
alias bashrc='vim ~/.bashrc'
alias src_bashpro='source ~/.bash_profile'
alias src_bashrc='source ~/.bashrc'

alias git_size='du -sh .git/objects'

alias finder='open ./'
alias iosws='open ios/Runner.xcworkspace'

export PIPENV_VENV_IN_PROJECT=true
alias py='python3'
alias pe='pipenv'

alias mamp_mysql="/Applications/MAMP/Library/bin/mysql"
alias dock_mysql='mysql -u root -p -h 127.0.0.1 -P 4306'

alias dock='docker'
alias docks='docker-compose'
alias docks_down='docker-compose down --rmi all'
alias docks_down_all='docker-compose down --rmi all --volumes'
function dock_exec(){
    docker exec -it $@ sh
}
# function dock_cmd() {
#     docker exec -it $1 $2
# }
# function dock_pycmd() {
#     docker exec -it $1 python manage.py $2
# }
