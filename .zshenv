autoload -U compinit && compinit -u

# Node
eval "$(nodenv init -)"
export PATH="$PATH:$HOME/.nodenv/bin"